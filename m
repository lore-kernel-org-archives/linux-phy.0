Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F768C433EF
	for <linux-phy@archiver.kernel.org>; Sun, 27 Feb 2022 04:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GB94XLDFikzTB2B86jYe+p0yzTNAwBCtJaMeKobiXGM=; b=22aarMmr1nw05I
	1+LBixRXeW3J1Jm2VBAy9vHwwuSh5mfKLwqtv3cKnt2w1LO/OfkCvotfBej5cLRfGcOMcaIQvAZ2n
	8GjWorf15a605DPrR25WnIPEOmb02U1RK2epwrZyrNUabeFIK+f7D2S7dCu42gP3iNj/IcDwOni7C
	QXFnVyWIhp7zkyh+2hTBB01KT8xQOJcO5ONLkcElEh3yrAAfcvdwZcg0C729LvvPVGG8Hm6UYdQg+
	Ctn/0zgOdmAcW2yMG1uAWQZSn00P+dYjUFefFGcjmh2sJ8i+IjxsZX0EbwQalS4KIVPPXg+YxoGJE
	AlQIokhioDcV3E8D8NyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOB2D-008qTY-W2; Sun, 27 Feb 2022 04:19:49 +0000
Received: from mail-oo1-xc2c.google.com ([2607:f8b0:4864:20::c2c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOB2A-008qSY-J8
 for linux-phy@lists.infradead.org; Sun, 27 Feb 2022 04:19:48 +0000
Received: by mail-oo1-xc2c.google.com with SMTP id
 s203-20020a4a3bd4000000b003191c2dcbe8so13361752oos.9
 for <linux-phy@lists.infradead.org>; Sat, 26 Feb 2022 20:19:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DOWQCle1yWXb74A6NwPdy7M5JNT4HpDC3FQ0vyWPTag=;
 b=IeylE/7EPIwORvE0KS/7Ameqd+Ni1fvuGcTyhvl9Q+CBocq+kWqmhUOzDExwG+binD
 b9NOZrJNqg8PSGZTql6noit2xRsPQlDHlz2uEkbZfPnkpQPgohVAEbkaulVLzCgms9aY
 mEMavWAD1EwN9ULfjmyBqjYWuob6fPjV9j0Xi9zyvLdCkbe649ctm4rO+ougQiWPqKQq
 TWZ0UYDBIL8HXreHEWovO+gTBa/jFnU8FvJ/jGr5lxO6qr80PzxK7DmeDtFSqBaugTx2
 Igm6D4I9aQ9VS4Z/qLMgBpDCSW6nsLnhMIRg662la8bTYY36QaOI6/l/mg3DTU0Jzttq
 7aQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DOWQCle1yWXb74A6NwPdy7M5JNT4HpDC3FQ0vyWPTag=;
 b=XgTU4GnvjLyq81W3q9jPImdT2KQ50mmDkMk0nlUaW54bhSTiuTiFK9ip9TzgmGxjhU
 Ucj0LnhXouLVC72EQC1znmeRX/mqW2thV/a4pq7NcQ15wWvCzyA+AS5yjB/p3KPgNyCZ
 7jD2f5wlQGX0HLv+rd2yfxK3ihbk0FUDUrLrT0ZIKgo+UyEXzH0YCO6wP6mPr0gIRYgO
 BhTWp3U6CanXewsvNjoPV8NGo4FAUZ/qTj2hCpojmVxGu1jid2jVLzkKMj+HFQgEyDG5
 7QYfojCCZU5tdQWkNl2cDw7Kkwdgu555hfxTQlyWXaSgDbtiYMkCkML0ryckxnpAiSoC
 14oA==
X-Gm-Message-State: AOAM533IVtL3mLCXOPPGyPK+JoBQGKkeUxm/9ps6cNdsv7WDNpQowkV4
 UHECWI5lfirT3dqpnPlFKuIBolHk/F4m69o6pkOpPw==
X-Google-Smtp-Source: ABdhPJzIp2ckX/5Fmg/5ZskGI2KaKSC4oRyfJHOpnu/S5EGTP1fU2fyV7LXsE25qAb1bhAdDLKuJeW4Nln8qhWSEhBA=
X-Received: by 2002:a4a:301c:0:b0:2dc:dcf1:8a62 with SMTP id
 q28-20020a4a301c000000b002dcdcf18a62mr6116378oof.7.1645935582815; Sat, 26 Feb
 2022 20:19:42 -0800 (PST)
MIME-Version: 1.0
References: <20220224123248.67073-1-bhupesh.sharma@linaro.org>
 <CAA8EJprRgsZRSXBQumveAn029j+w6xO8K2kZUO4rzZaefuYe7Q@mail.gmail.com>
 <CAH=2NtxQBS=c0W0cpX5EdNi12PrqiKEuzyvEtF8WrVE6nsU_rg@mail.gmail.com>
 <a6d28a2e-69fc-9bdf-da0d-28be35d9bfc2@linaro.org>
In-Reply-To: <a6d28a2e-69fc-9bdf-da0d-28be35d9bfc2@linaro.org>
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date: Sun, 27 Feb 2022 09:49:31 +0530
Message-ID: <CAH=2NtwveafJxjNAY_2eRE1sKhEL2wKJhcF7a1THsJW_QiwSpQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom, qmp: Mark '#clock-cells' as a
 'optional' property
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, bhupesh.linux@gmail.com, agross@kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org, robh+dt@kernel.org, 
 Bjorn Andersson <bjorn.andersson@linaro.org>, Vinod Koul <vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220226_201946_691022_293F2A0A 
X-CRM114-Status: GOOD (  16.62  )
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

On Sun, 27 Feb 2022 at 05:08, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On 25/02/2022 12:16, Bhupesh Sharma wrote:
> > Hi Dmitry,
> >
> > Thanks for your review comments.
> >
> > On Thu, 24 Feb 2022 at 20:22, Dmitry Baryshkov
> > <dmitry.baryshkov@linaro.org> wrote:
> >>
> >> On Thu, 24 Feb 2022 at 15:33, Bhupesh Sharma <bhupesh.sharma@linaro.org> wrote:
> >>>
> >>> Since '#clock-cells' is not a required property for several
> >>> QCoM boards supporting qmp-phy(s) (for e.g. sm8150, sm8250 or sm8350 SoC
> >>> based boards), mark it as an optional property instead.
> >>
> >> I believe the description is not correct. the clock-cells should not
> >> be used at all, so it should be removed from the root node.
> >
> > Hmm.. 'clock-cells' is still used for describing qmp phy pcie nodes for certain
> > devices like 'msm8996.dtsi'. I am not sure if removing it would impact existing
> > dts files. But let me try cleaning them up in v2.
>
> Checked. Unless I'm mistaken, msm8996.dtsi doesn't use #clock-cells in
> root QMP PHY nodes.

Indeed. I meant that we made some cleanups already via
82d61e19fccb ("arm64: dts: qcom: msm8996: Move '#clock-cells' to QMP
PHY child node"),
but it seems a few dts still need to be cleaned up to move the
'#clock-cells' to QMP PHY child node instead of the root node.

I will send a fixed version in v2 :)

Regards,
Bhupesh

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
