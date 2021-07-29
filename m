Return-Path: <SRS0=z2Tz=MV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 375E8C4338F
	for <linux-phy@archiver.kernel.org>; Thu, 29 Jul 2021 17:21:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ED8B560EE6
	for <linux-phy@archiver.kernel.org>; Thu, 29 Jul 2021 17:21:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org ED8B560EE6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MaMdCXQUZWOf8OPV8BKzkrobfZ17Pk++2UYezXAh/xA=; b=Lymw/qq9YMxpZE
	5ilIsPVr/8/pLRYvuRUVAYJuReoquQJiJaGWlF7dHXGhOCwY5OTeEjiiyZKImOAVBbj+AZNO6IQWA
	epHWcF1xwne0euphC+3y0ETSMCb/Ug2EOsJWnV8zbEvjDy3HK1JoVHc90aFytTHDc1ZZhY87/A8xK
	9zGG5QRX5UeV4ijNCmpLM50azUiAMt6UHk6SAjpJmzbHrAeondRBQO8wlhkEOnjN0VLD80VpLBMnq
	oSxVlOMXrEzqJ2wb0EKc5WPzuYj3JO6R8chpYAVWj/GaELH2YJGbw+KEMikT3sGOa8bv/uk+t/Ikq
	R6g8AMjNAyCzsaMpW2vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m99iT-005J48-FU; Thu, 29 Jul 2021 17:21:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m99iF-005J15-6d; Thu, 29 Jul 2021 17:20:52 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id C477260F23;
 Thu, 29 Jul 2021 17:20:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1627579250;
 bh=3u51lRqQafrXq5f6IqvWMxZ1ptNInQdEddFA3TjKAb0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=bbTDTTZUuX1tvZrjspUiyv7DKa8/vf8E/FZBxFhlf4W1jolNX6oBAnUQmJLMA+/HO
 os+AFaPTyDu57ZXYiK1ZmRz+uv4PsMw0xMU5NsT4xSr2TCKBn4DlXJQPC9aOVprzve
 OXGhvZsI9KJS8jfurdZYrJmlILa2SrwZumTm2BeTDTueOvNKqD7DpMpMemfTMHwQtP
 m7OWv5mIHK07aUFQSE73K7t6wqG3gJKYxq8Cv36//b5YyWFrVKc2ohRCANV5aEPjFA
 js5QvQdGh2cPcaatgPANzygIq1RoxijBd88J8YAo6KIOtXqCmuSd4gLTGtZ0TAwS1H
 3ysTC+kA1fsag==
Received: by mail-ej1-f46.google.com with SMTP id qk33so11883242ejc.12;
 Thu, 29 Jul 2021 10:20:50 -0700 (PDT)
X-Gm-Message-State: AOAM533kfjdkq3lZJ+GoY/HMYIWy/wcillB+JHHbwdVexM4WQfNSD4tV
 9rWcgtKwwb0G/Tw1OIYF2gQe7ysAa2w5jZkpXg==
X-Google-Smtp-Source: ABdhPJzuipRyW+xyNT+RtqOAnbQFg0W4CvcPJqdZSA4Ju9OA/O4unHd//H8Jvub6DcKsikWuNgfrKfNfwMj6Ur9hAJQ=
X-Received: by 2002:a17:906:d287:: with SMTP id
 ay7mr5417811ejb.360.1627579249347; 
 Thu, 29 Jul 2021 10:20:49 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1627559126.git.mchehab+huawei@kernel.org>
In-Reply-To: <cover.1627559126.git.mchehab+huawei@kernel.org>
From: Rob Herring <robh@kernel.org>
Date: Thu, 29 Jul 2021 11:20:37 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+fY3k7JzUYH5WX=nDoa2jLwnoEf8hp64UjYR5OpPAFiA@mail.gmail.com>
Message-ID: <CAL_Jsq+fY3k7JzUYH5WX=nDoa2jLwnoEf8hp64UjYR5OpPAFiA@mail.gmail.com>
Subject: Re: [PATCH 0/5] DT schema changes for HiKey970 PCIe hardware to work
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Linuxarm <linuxarm@huawei.com>, mauro.chehab@huawei.com, 
 Binghui Wang <wangbinghui@hisilicon.com>, 
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Jingoo Han <jingoohan1@gmail.com>, 
 Xiaowei Song <songxiaowei@hisilicon.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 PCI <linux-pci@vger.kernel.org>, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210729_102051_323783_309AEEBA 
X-CRM114-Status: GOOD (  13.13  )
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

On Thu, Jul 29, 2021 at 5:56 AM Mauro Carvalho Chehab
<mchehab+huawei@kernel.org> wrote:
>
> Hi Rob,
>
> After our discussions, I'm opting to submit first the DT bindings for the
> Kirin 970 PCIe support.
>
> Patch 1 is there just because patch 2 needs. You already acked on it.
>
> Patch 5 is also there just as an example of the entire stuff added to
> the DTS file.
>
> The core of this series are patches 2 to 4. They contain the conversion
> of the kirin-pcie.txt file to the DT schema, and adds the needed
> bindings.
>
> Currently, it generates some warnings:
>
>    Documentation/devicetree/bindings/pci/hisilicon,kirin-pcie.example.dt.yaml: pcie@f5000000: pcie@4,0:compatible: None of ['pciclass,0604'] are valid under the given schema
>         From schema: Documentation/devicetree/bindings/pci/hisilicon,kirin-pcie.yaml

This should be fixed now in dtschema master.

>   Documentation/devicetree/bindings/pci/hisilicon,kirin-pcie.example.dt.yaml: pcie@4,0: reset-gpios: [[4294967295, 1, 0]] is too short

Your proposed change to pci-bus.yaml is wrong. It's requiring 4
entries. You need 'minItems: 1'.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
