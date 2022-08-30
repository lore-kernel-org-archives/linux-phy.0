Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D41AECAAA1
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 07:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mNEvNU5qnaKb5Nk38zr3G684jy9/bqKq7SYtXotNfsg=; b=Tr6Rr5Lut8Xs2r
	xJgEKVj0U+9DwUduKPHj0w592R3HcdHFGVAGgCbzsFZ8Wg2bBSjrVzvDusavlrUqHUklkv5EBDV9n
	jDVnP9vkmNY/UlszY0w9mER8qzflVyZuG2IyxLuQdFKYFSJmBNVJ5CHJ9YO7zfDwreyhcWAdDc0Jc
	3L/dT2Te1m1Dfy9da2NBxVZFScNYeVw1gA42teuj0H9SEeNcwXMOFCcO7VHAtNzrXJadD1sa2pZX3
	ZnDE6yVFMu4QIBN7Gqw5XlcM7Ee9GlVAZM0egCRl04sFNDafMLeE+/f9inmKCXhOm6vTCj2c1VAAs
	0k+oP0bqf65EpC6D14Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqJ-00EpTw-Io; Tue, 30 Aug 2022 07:39:27 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvpD-00EovI-SY
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 07:38:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 76383B815D2;
	Tue, 30 Aug 2022 07:38:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AAAB4C433C1;
	Tue, 30 Aug 2022 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661845097;
	bh=a1VeHRSBHSS7rf/yq2/xorcuUbYUfWNTRpIjfM6yn6s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QJyPkXExYyaudVb9dm57jlNwJ0zKgPgZH1qqEsZ26rmO/2cpripu2PwNJynB5YSYr
	 +B7KMyPLpRNq4/yt084OgOWDVxCYZ82nGQj7rMbSfycZLMC8ew8sYBj9YmupQ/c2l6
	 9MCKE/Mv3dH5Kk3Nu9Fh+HyONkMBn/TtDUSg7dzvazwH+/ZbZhNs6XZSp0XOY2N8fm
	 Egn38A0QmhUOxaNhJigLcZlHndouJKUzawQcJulHywgPxrDIRNl9PnTGDE6v6c3UxK
	 ToF7yGsea1p4I3xp+0+Lwj5phUq0z9/5VGRNObbgJTDG34958MT9UHrqwWo3gfQ+iR
	 j57Z5CmjVwcCw==
Date: Tue, 30 Aug 2022 13:08:12 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/4] phy: qcom-qmp: Add SC8280XP USB PHYs
Message-ID: <Yw2+ZOn6pVN37NyO@matsya>
References: <20220810042303.3583194-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220810042303.3583194-1-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_003820_327395_84B0D139 
X-CRM114-Status: UNSURE (   6.60  )
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

On 09-08-22, 21:22, Bjorn Andersson wrote:
> Introduce UNI and combo USB PHYs for the Qualcomm SC8280XP platform.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
