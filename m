Return-Path: <SRS0=czee=OZ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 177D7C4332F
	for <linux-phy@archiver.kernel.org>; Tue,  5 Oct 2021 15:45:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CE2E761131
	for <linux-phy@archiver.kernel.org>; Tue,  5 Oct 2021 15:45:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CE2E761131
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8xTNjEYGNZ3609vKgIbnbwjpsQOQk4EqSRiyeBs3U58=; b=vtVreQlE51v0PL
	L1iDh1trajXhuwDeUsyh3PLy8ScLX65bozw5l8cmOMeivyu4rVW/uu30kVGeomiduuTMZoYmqKvB9
	H9fq5XzbJNNCjJ0vcdK8rrPe6vNYVCPDrjqVEcg2qS2eaUaVPOheHlF8dGUgzNxW+m+tMwx1tJh2J
	64ybQ7a34ZwVnKKxzey4QP7run6ZRd5j4HATNJ8XujGQ+Exu2SgVH7lSNsatTJrtlyCZ4tmQr+tX+
	G5LR9kjlcP/RzZMsfdq+uqqEGY9hR2E4oUvZMr0D36CYNwXBtumh6jfMNUijgiJ/OBi/nMZMGtWhK
	R+tyi1TOinTVjZ53BYnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXmdA-00B7hW-Bv; Tue, 05 Oct 2021 15:45:24 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXmd7-00B7et-2q
 for linux-phy@lists.infradead.org; Tue, 05 Oct 2021 15:45:22 +0000
Received: by mail-oi1-x235.google.com with SMTP id o4so2861375oia.10
 for <linux-phy@lists.infradead.org>; Tue, 05 Oct 2021 08:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=DyGC1o0ExiPXVEzbLwM161zjxcLwXtL3mQFHYbOsiDo=;
 b=L9DrO2uUoQ/UpmFwlKvuVaRiu12KqmtBMCrJ2DKw5oxUJeW34nCAUCbRoMUM6Vk34w
 ZEn1A7xPxnl9G2tq4BMjqrXkoR4FGN/0sfLPauqPM5neqBW/CcBHVsADJLnA+lZ7mVFw
 9DD9epEqNj0CvNGEDlT7pmoNOmmBhaQpa3QpMAQjbsdvnfwwISp5B88IwHqK2dZFo7Xh
 bHzU0WBMncx9+eKP0uX+iaLmoCw8dixxGSFSzseCChZCE9hYyK5niUZYosyY5BYPkRSN
 DKYsTQM9tjlwCAvC8pZl5xAh7D9/yjgiUPUmC96sdR0cdjpy5xXgmxALmFMajHyfUX5D
 LQew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DyGC1o0ExiPXVEzbLwM161zjxcLwXtL3mQFHYbOsiDo=;
 b=oe/fH8tbZ4xiom4c/Yz46yS7xe9lnEJbStECMkNP3EzwVponXnMMf6Limo8+oxI1fl
 rKSN5JHfU9EI0mc4pJp4zNnUHK+qUilJoAZzXVGsRwQ4HNzSyeHyWXJrEyzza4i9OBCm
 gkdql8xYiUgmOT9g+5ciokzXC1YdFZDwgAhGLAqbb7OmOUfJ9vz5kmOIAwwi3eKZ6lbi
 l6u/UrXuwGTJ+GFmBfzvzFQip07CGIue82+RWARyheyln0ZRkpWp/xEHc9PKx/yVCpPg
 Y/R2cy2arztXH+/v0SEjAj8qfxbs2gJ43y9s9swbl0uZybRQkjwQ2B0upRMw5n9ASwnU
 5O7w==
X-Gm-Message-State: AOAM530WrFcuVvdf4KrSiHz6envjNvI5bw6/dLrML9LjmP77aw5iS7dq
 LoUPy4MY6apb/YEIyGdRwTe0xw==
X-Google-Smtp-Source: ABdhPJxcdpxGev1KAnRYwHDx/rf+AN5tzztCSHqw6+k+f4FyxvAWAqXGrACRtPVl44iPi8MVcXXF7Q==
X-Received: by 2002:aca:110e:: with SMTP id 14mr3093834oir.18.1633448719808;
 Tue, 05 Oct 2021 08:45:19 -0700 (PDT)
Received: from ripper ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
 by smtp.gmail.com with ESMTPSA id a3sm3345617oie.3.2021.10.05.08.45.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Oct 2021 08:45:19 -0700 (PDT)
Date: Tue, 5 Oct 2021 08:47:02 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Shawn Guo <shawn.guo@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 02/10] dt-bindings: phy: qcom,qmp: IPQ6018 and IPQ8074
 PCIe PHY require no supply
Message-ID: <YVxzdiVKWOF9AVVV@ripper>
References: <20210929034253.24570-1-shawn.guo@linaro.org>
 <20210929034253.24570-3-shawn.guo@linaro.org>
 <YVvx9jEGS3g9LD8X@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YVvx9jEGS3g9LD8X@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211005_084521_184735_5EBA956B 
X-CRM114-Status: GOOD (  11.02  )
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

On Mon 04 Oct 23:34 PDT 2021, Vinod Koul wrote:

> On 29-09-21, 11:42, Shawn Guo wrote:
> > The qmp-phy driver suggests that 'vdda-phy-supply' and 'vdda-pll-supply'
> > are not required for IPQ6018 and IPQ8074 QMP PCIe PHY.  Update the
> > bindings to reflect it.
> > 
> > While at it, also correct the clock properies for IPQ8074 QMP PCIe PHY.
> > And as the result, 'qcom,ipq8074-qmp-pcie-phy' and
> > 'qcom,ipq6018-qmp-pcie-phy' share the same clock, reset and supply
> > bindings.
> 
> Acked-By: Vinod Koul <vkoul@kernel.org>
> 

I think it's better if you take the two dt-bindings through your tree,
so we avoid any potential merge conflicts related to possible other
changes.

Regards,
Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
