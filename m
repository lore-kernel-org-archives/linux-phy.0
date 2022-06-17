Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0426AC433EF
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jun 2022 00:32:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=odqggDTTCleON7gZES0C12lHGdJkWI/2f4w2sOB6pPI=; b=umBNfbFJd4JX4D
	N57u/oPEV5VpbFji/b2LCZRRT27Rn46R4+D7XqRTk/aa48kzZfFbnMY0hzJxAm7uc47Kp80J/P5Wi
	nUXeNPJRvXXaSbnoIU6726DxoD09ev6l0Po9SXw0ahOrWB1Hp8sDtdrItBHZMIbhkxTjf7TM1ZH8f
	XS2bqwkxcqLd/1cJ2bA6ESRY0vGWNggOMALafPVqxVe653aemcxriDr8/jUgs4J7WPXaDfDsV6dGJ
	dnvBzQk2MaDUojzUCXXaF9mVaUAw9t01uIJQThR2YrNMiYEklZGSUU9zqgpMzDct/HGwzBE8NEXz9
	nkeb9ePzAK5QE63oQRSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1zuq-004tO3-Cr; Fri, 17 Jun 2022 00:32:48 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1zun-004tNb-PV
	for linux-phy@lists.infradead.org; Fri, 17 Jun 2022 00:32:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 43DA56194A;
	Fri, 17 Jun 2022 00:32:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F8E7C34114;
	Fri, 17 Jun 2022 00:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655425964;
	bh=ufmvqRGgHUvV6toZbYhN2qqM/1cyhHchPSmePII2uTI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b65mvLcJfjJYO1Qf8hvyQeeqpDuV0a1fCijLoZbnHyWytw/+sgh0oAEFrS2BJtNd6
	 lPeiga4R16AJcaUASexP39UwV/brsN/lt/dmsTcbQFRH/JSj+3Gck97Ti9MTCFzVUJ
	 OPLmNKI3UQkm5jSUMfP7f5Vla9SbSnbQOfCDWYnGkM21xkO8h1U6mtmr1y18tzxEz5
	 YgFZB0Kula+SO2TWYZ0pmS+rAstFYGtJWfNH8mQwQqJNNqnxCP/hdOd27VCCOLx+mP
	 7VCSw2A0RXW30WS84D/xmUQzrSF5b8CaSFdoAfjmNvdJ/ntuCeMu5h6rjZ2XjGzrZG
	 3eqrM5bNxqk1w==
Date: Thu, 16 Jun 2022 17:32:44 -0700
From: Vinod Koul <vkoul@kernel.org>
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Stephen Boyd <swboyd@chromium.org>,
	Doug Anderson <dianders@chromium.org>,
	Matthias Kaehlcke <mka@chromium.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>, devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	quic_pkondeti@quicinc.com, quic_ppratap@quicinc.com,
	quic_vpulyala@quicinc.com
Subject: Re: [v9 0/3] Add QCOM SNPS PHY overriding params support
Message-ID: <YqvLrN+ZgC9QRbKE@matsya>
References: <1655095653-27892-1-git-send-email-quic_kriskura@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1655095653-27892-1-git-send-email-quic_kriskura@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_173245_901693_D5B2111A 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 13-06-22, 10:17, Krishna Kurapati wrote:
> Added support for overriding tuning parameters in QCOM SNPS PHY
> from device tree. This parameter tuning is required to tune the
> hs signal on dp/dm lines for electrical compliance to be successful.

Why is [PATCH....] not appearing in title (hint dont touch these
manually, use -v 9 in git format-patch to generate...

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
