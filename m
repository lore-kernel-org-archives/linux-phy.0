Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E468606A33E
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 08:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Owp+qULK;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=JkltRoqW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=O6h8/g2I+uztGPAAQhNZFjInnpjGLV4CqF15XFULkfg=; b=Owp+qULKRNzMvnfu161tNkfq9y
	MPiu8fYIDZu10MuDd3xty/UI/9CSVLNIfEf2vCtrRNjcSgLfWn42zyTuxYVWzrKT1YTCiK74O6DJY
	eFhIpPLg+C1nL7kudTcKFLbPPypUfZqeWU/1qrt4/QPCm8rwxIRIugIwuYCBru66sxU0//8omJLnS
	SgO9xwvhm0nAPIHNUJyT7+1V0+1DOiipNu9Zy0K1VoiABbWW7Suw6tH1CjzspbWt0Izr/+ncgunp9
	zkpsZtzQm1DDqNQdW6MIf+zrMqqApJgiz2ivbl3v53DQ0ly4HCEcTgGuxklr95UCGxnWALOTFa3fL
	J5Py29fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQBW-000000096p4-1Wzx;
	Thu, 12 Nov 2026 08:29:30 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQBU-000000096or-2vnx
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 08:29:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9202C61268;
	Thu, 12 Nov 2026 08:29:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 821D21F00A05;
	Thu, 12 Nov 2026 08:29:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794472167;
	bh=XuscN1Ri564Wpo3m39uIOx+8POLBub6iNsNptAd0ggY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=JkltRoqWZcBVLsQkvIBByulEzNnzGve35H+Lw5Npmp3/etTCJ5l2j/y+FTuHjGFfn
	 wfXpcfVX0xvOb46wpMmwSNaKno+Rc8/yGmUputb1AbNXOd9axtcpbP7iHzaxLW7zDT
	 xMWi2tA29nl7TZ2buXperh/RD2H9mUwyMhdjdbpjP199GLydINw38PkOaVB97EYg9c
	 QbqSzQZJoEgvlv5wJc5abusPICc40ChkbJwL978GCAQeBW9bd+2XiE1E/Lo24e2tlA
	 J00LRVk0YueT+bOGYKGM07GZFj7pC8zGjB2f6zaqBsCQQQJ1cyf7Pw3bRcz7vNFpmL
	 zfdYV+TPNh5wA==
Date: Thu, 12 Nov 2026 13:59:23 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Abel Vesa <abelvesa@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	peter.chen@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/4] Add qref and refgen regulator support for QCS8300
 and SA8775p PCIe PHYs
Message-ID: <avV44_YBLgj1wJfL@parshuram>
References: <20260916102023.2054761-1-ziyue.zhang@oss.qualcomm.com>
 <f4d10126-e2a4-41ad-9960-ff129d92f39a@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f4d10126-e2a4-41ad-9960-ff129d92f39a@oss.qualcomm.com>
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 13-10-26, 15:27, Ziyue Zhang wrote:

> 
> It seems the patches get reviewed tag for a long time, can you give this
> 
> series further comment or help me to merge them ?

This has some unresolved comments from Konrad, pls fix them and post
again

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
