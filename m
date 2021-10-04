Return-Path: <SRS0=CgOe=OY=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 748C2C433EF
	for <linux-phy@archiver.kernel.org>; Mon,  4 Oct 2021 03:01:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 28107611C8
	for <linux-phy@archiver.kernel.org>; Mon,  4 Oct 2021 03:01:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 28107611C8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0EmMSMjhMKsnjsPlKcwJ+LVvdnbj80ZS7XZEUejWTOw=; b=D4u065kDxVhjoH
	SO1JVV9fOMvFXyCxY9QOKVgi2Q6V4KF3YQ1qu9ZtAtv4KkxaS8CnGFkrgiRo1FH/0ccH5Nt8rVCRj
	brEomSLEOk3lxPK3ombdZf0v7MCoA7aeVr7+4UkhH8wm2b1Tsk/dRhzyLhbtmsv77ZemDNt9ayMFa
	fzPL4WMhasEy+UCqYuhqUIJpjc4t4XHGwxgxpUfybWQoX9HicaFSK3eRQRhKTj0lWv2Q0aZG/5WXY
	76gF+VZuC3jrJ6osIFMbtpC4BQT22tIPKzz0E6fYX5Pf+oD1N1ev6aWauQ4k6BNaq6vI1d4S/lvky
	NHQKnrNN/mbTA9iHznQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXEEW-004wGU-KJ; Mon, 04 Oct 2021 03:01:40 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXEET-004wFx-61
 for linux-phy@lists.infradead.org; Mon, 04 Oct 2021 03:01:38 +0000
Received: by mail-pg1-x52e.google.com with SMTP id 66so14760710pgc.9
 for <linux-phy@lists.infradead.org>; Sun, 03 Oct 2021 20:01:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TjNWNuR+gMWf2t1n3s/D7Jq0z4ZiFV+w9SGfLF5kxQg=;
 b=luns9ZSXpq0KwYmC30LME0ipn/Lhv8Yc/t39g1t4rSTQ+iFcOhBgGlExIX37NFUhbZ
 UaTJcfqDK0CKntIhETTytNStKpEhyWRnVsUW8cNqFrA8dzM5rgNDOQn5RW7cD4D/E63Y
 KrsltA8CCHxXkhKbsSNyFUrhxDCfowCmtCBTQ4hHx+YsmrwWUh2+HwiLk8Hs+wIhsQcm
 +wH+OiQMG8XFTB/o8n0eKyOUDztOs1MMG1bYOTKZEfosWVRY/egh6kHWy/rK9GzD7tGs
 HrwSr0yzEDxi5nSqgG+41GwZdW+eFpI/fGRp9/aHYhKcc24xmF1Sq9/GVnZd5cUhYhIa
 Jp/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TjNWNuR+gMWf2t1n3s/D7Jq0z4ZiFV+w9SGfLF5kxQg=;
 b=AGSulFG2zws2guJgB4YJky5areh5yMKhOZZotqecZvOH7Vxsd3RINFXGB/VpHDZQZ9
 JN0qx3teI0VjwXQv2C1gfkihrje0/BTadOoN/v2vfCNdn82wYMKig5D8TNsd4o6XQQO9
 7kENLE4gGiDNnH2q6JR4p6eKG/+BS1prpKLpNJoqJBBz3pwMq95A2I4wtfPx+33OKmnb
 i+PM1JSG9kUIHwuFmUg0W0HfrNW0mnI/G7nQEF2D3kARZsSPOqzP9DnmpM14VbPLU5ci
 pDbd7nzoHiNzbXCxjbMjMThLyLh5hk9mXlTHyS2aBHb+atCDlfEPCjZyxk+JS9cI11CZ
 MBjg==
X-Gm-Message-State: AOAM531GOABajoK6C85/ANBo6m6A7wNWuLUjZ5PYxg4FTyuo1G2hHKOO
 O8lDuOvl35pP7e9f1Zs/ELd1pA==
X-Google-Smtp-Source: ABdhPJx8e9TmH82hx3DHUZCdh+Mi5WHU8V7twDoiKMJ9iWdcG6G1h07M6jVbiAmzYwvghqe9IEqi/A==
X-Received: by 2002:a63:c5d:: with SMTP id 29mr5780720pgm.100.1633316495627;
 Sun, 03 Oct 2021 20:01:35 -0700 (PDT)
Received: from dragon (80.251.214.228.16clouds.com. [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id t1sm11656919pgf.78.2021.10.03.20.01.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 03 Oct 2021 20:01:35 -0700 (PDT)
Date: Mon, 4 Oct 2021 11:01:29 +0800
From: Shawn Guo <shawn.guo@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 Jami Kettunen <jamipkettunen@gmail.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/3] Add missing vdd-supply for QUSB2 PHY
Message-ID: <20211004030128.GC13320@dragon>
References: <20210928022002.26286-1-shawn.guo@linaro.org>
 <YVbD12kTfbGmRYId@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YVbD12kTfbGmRYId@matsya>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211003_200137_302116_A0DBCB95 
X-CRM114-Status: GOOD (  17.06  )
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

Hi Vinod,

On Fri, Oct 01, 2021 at 01:46:23PM +0530, Vinod Koul wrote:
> Hi Shawn,
> 
> On 28-09-21, 10:19, Shawn Guo wrote:
> > The series adds missing vdd-supply for QUSB2 PHY which is required for
> > digital circuit.  The driver works right now likely because firmware
> > already sets it up.  Add it to bindings, driver and DTS that miss the
> > supply.
> > 
> > It should not cause problem for existing DTBs:
> > - SC7180, SDM630, SDM845 based platforms already specified vdd-supply
> >   in the DTBs.
> > - MSM8996 and MSM8998 platform DTBs miss vdd-supply, but dummy regulator
> >   will ensure QUSB2 PHY driver works as before on these platforms.
> 
> What about the rest.. I checked SM8350 and SM8250 mtp ones are missing
> this. With the property made mandatory, I guess it would cause these to
> fail right..

From what I can see, SM8350 and SM8250 use qcom-snps-femto-v2 PHY
rather than qcom-qusb2.  So they should not be affected by this series.

Shawn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
