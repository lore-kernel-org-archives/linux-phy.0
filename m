Return-Path: <SRS0=vwvf=M2=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1303CC432BE
	for <linux-phy@archiver.kernel.org>; Tue,  3 Aug 2021 22:12:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CC8FF6104F
	for <linux-phy@archiver.kernel.org>; Tue,  3 Aug 2021 22:11:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CC8FF6104F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fe4j8Nj9tmi7KaEj/IskxHmxKeraom0iFwxpkuxX/uI=; b=hoyfFhSi0LoI+A
	vg061CFruTwBZUA/I7h4YdF9ywH7oul8uGnuRzuv152eowP/SGtYz69mT1CBqiI7renNzvtRTadVN
	DVFRYGAuUkllWfqYleOFYVVAGrRAtKhyEwEETmygOA4uWxad0SqjReb7edIvS0Fths2mfN3+ibKrC
	hHWYs4Oea+F4sHI13ixaoT/3LZbAVfn3BzdxyjsCg6T0xvSkv362c453xMeC00SfkKlQ9Q3OtcsWe
	ROudExgtFuFGwFM66+WG17YKX02PG2bbtpV9RSpuqFJSu31fAsNzuk1WhyRKdJnAfCLEHvd3N+9JF
	4sh1vmKFvalRZxAebsKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mB2dj-004Iub-Bu; Tue, 03 Aug 2021 22:11:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mB2dg-004ItG-Tz
 for linux-phy@lists.infradead.org; Tue, 03 Aug 2021 22:11:58 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 32F8861029
 for <linux-phy@lists.infradead.org>; Tue,  3 Aug 2021 22:11:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628028716;
 bh=vSQLD2Dx1iWptSqQt/0j5xCISU3XPMV2GPsXMPEtfV0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=s5haClTxAMXXK+SMtVRQLn48uZKTcUAX14akEg9/wY3BQwYq7AVRcJt5h8zntzWFp
 /UIT4jYCDh4j67dB934kbf0xKBY0ExfvhUpJLULbpvC9CRLDIfYnc8qFl1r0lBviUg
 oZFikuRWBM1+EjbbORbQrpPJKFGgOwkP2YiUNOEafg5yicWOMdVeCmIA/ol3lWG4N0
 0zBHnEOLov3Y9JnsSytJSucCkhh9DNixVMsecqjjjMcdBykCUp72WEzqHqi5CruOHu
 j43AHg8y0n5589bpPH9Uk1xP1ZoR1kINMMjfcpYG3F3OQtuHRimmywvEoeL4L6M6KX
 MDsWmeSO3lv9w==
Received: by mail-ed1-f49.google.com with SMTP id b7so1021944edu.3
 for <linux-phy@lists.infradead.org>; Tue, 03 Aug 2021 15:11:56 -0700 (PDT)
X-Gm-Message-State: AOAM530fw9Lr+VOkpnyWRDiQ2Pk3OV75Vw8akZ2wtpIDVhq13PavmbON
 4W75KXq9iTNX5vFv2eY6iChTLcGHlAthzgoueA==
X-Google-Smtp-Source: ABdhPJy8lulYOjbYH1fj7VhNDQlwD+s1ZfdaUnK40lRIQAEPWK8BCRG86JqAGI6XEr1nfCf6u6Fiu0avOmOqKVXK26M=
X-Received: by 2002:a05:6402:291d:: with SMTP id
 ee29mr28816734edb.289.1628028714789; 
 Tue, 03 Aug 2021 15:11:54 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1627965261.git.mchehab+huawei@kernel.org>
In-Reply-To: <cover.1627965261.git.mchehab+huawei@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 3 Aug 2021 16:11:42 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLjw=+szXWJjGe86tMc51NA-5j=jVSXUAWuKeZRuJNJUg@mail.gmail.com>
Message-ID: <CAL_JsqLjw=+szXWJjGe86tMc51NA-5j=jVSXUAWuKeZRuJNJUg@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] DT schema changes for HiKey970 PCIe hardware to
 work
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Linuxarm <linuxarm@huawei.com>, mauro.chehab@huawei.com, 
 Binghui Wang <wangbinghui@hisilicon.com>, 
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Jingoo Han <jingoohan1@gmail.com>, 
 Xiaowei Song <songxiaowei@hisilicon.com>, devicetree@vger.kernel.org, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 PCI <linux-pci@vger.kernel.org>, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210803_151157_028491_BE70CBEA 
X-CRM114-Status: GOOD (  14.19  )
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

On Mon, Aug 2, 2021 at 10:39 PM Mauro Carvalho Chehab
<mchehab+huawei@kernel.org> wrote:
>
> Hi Rob,
>
> That's the third version of the DT bindings for Kirin 970 PCIE and its
> corresponding PHY.
>
> It is identical to v2, except by:
>         -          pcie@7,0 { // Lane 7: Ethernet
>         +          pcie@7,0 { // Lane 6: Ethernet

Can you check whether you have DT node links in sysfs for the PCI
devices? If you don't, then something is wrong still in the topology
or the PCI core is failing to set the DT node pointer in struct
device. Though you don't rely on that currently, we want the topology
to match. It's possible this never worked on arm/arm64 as mainly
powerpc relied on this.

I'd like some way to validate the DT matches the PCI topology. We
could have a tool that generates the DT structure based on the PCI
topology.

> at Documentation/devicetree/bindings/pci/hisilicon,kirin-pcie.yaml
>
> IMO, the best would be to merge this series via your tree, as it
> depends on the patch converting the DT bindings for the PCIe DWC
> driver.

Yes, agreed.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
