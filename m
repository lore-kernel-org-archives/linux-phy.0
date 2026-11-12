Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CE7606A8BC
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 09:04:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=NyUTRiu2;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Md3oxjWO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=sCaARBJO+cnVrFGT8zuJp1xwCvu6MMHLIFq3iZWfgIE=; b=NyUTRiu2cn14F4wOm/269LKRgQ
	Qu2pLSes3oJXiZV1ksu9+eAOupxSOUT6laIt3boOXgTGSjLDtvs9I+sjSWpecV8tuC+Bx2f0zlfPw
	pKKF+2g0b5P6KHb6Ty9FcMpuh7JlUAYXrU2ZouH0cUQ09gzqbDbTUBuRoApKRYbGNPEMUCeyPMxpB
	ZDdeK+Sg+q6P2CACorSzmJTfqsos/C8TiGnaIxt0DoPsVG/pw0R6nAbFaYRro3KO8U2mzWI3biyJM
	4KfKM2CHAzBGPKtJgwleRjrFfayG/W76Of3JZCizvWzHmMYH3gdHvSg8dcIQu7WdACRid2I/xaKQ4
	FTWEhFSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQj8-00000009HQe-3Pfs;
	Thu, 12 Nov 2026 09:04:14 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQj7-00000009HQJ-3CiK
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 09:04:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 63A114372D;
	Thu, 12 Nov 2026 09:04:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 611741F00A06;
	Thu, 12 Nov 2026 09:04:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794474253;
	bh=4vl0yf9MswuE4OKPGllY340LXxGifnWzots3uBoUDjc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=Md3oxjWOP0QsaCVItxOJ2e0NVSHIeOak5RTpFOBi7xgFTJN3RnXxrTfSvDmbNby74
	 I4W/k72ozIDZvPuqluY6IXFYQMtv5TpUCnEZg66M1wZfiv/uywP7oq6i004d3FOuJ3
	 RiJH35a+t5A5n6wQARIaCyK1P17OdhDKslpsG+JI77cFqtUJcoVPW9C7NBO/OIVWSo
	 qwQOhX6Oz09bVBtJpUaRxtbx+Y0MFugoxi3bjgzEeFZVki7kRps4XDAGX7iqfzHVJx
	 yHllbNLD3+ZBZFvI2CVXKxYwqRUhsOIeHi2pi2yaztjLsgwMly1Ma8h2EUSdXFQ4lu
	 8A+KlsRIUQ1VQ==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260917-smb-repeater-power-leakage-v1-1-6d7311c3c03e@oss.qualcomm.com>
References: <20260917-smb-repeater-power-leakage-v1-1-6d7311c3c03e@oss.qualcomm.com>
Subject: Re: [PATCH] phy: qualcomm: phy-qcom-eusb2-repeater: Fix SMB Power
 leakage issue
Message-Id: <179447425103.428303.413537830630174514.b4-ty@kernel.org>
Date: Thu, 12 Nov 2026 14:34:11 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Mailer: b4 0.14.3
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Thu, 17 Sep 2026 15:10:09 +0530, Krishna Kurapati wrote:
> On Glymur, it is observed that although the exit call is done, there is a
> power leakage seen on SMB2370 charger (which embeds the eUSB2 module as
> well). As per recommendation of HW team, disable the repeater during the
> exit call to prevent this power leakage.
> 
> 

Applied, thanks!

[1/1] phy: qualcomm: phy-qcom-eusb2-repeater: Fix SMB Power leakage issue
      commit: a3e5158b43691c447eb77d43ea4f1ec6b1675605

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
