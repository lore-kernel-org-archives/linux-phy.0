Return-Path: <SRS0=G5Ry=KM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42783C433B4
	for <linux-phy@archiver.kernel.org>; Mon, 17 May 2021 21:46:19 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B9CFA611ED
	for <linux-phy@archiver.kernel.org>; Mon, 17 May 2021 21:46:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B9CFA611ED
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KXbjCz8bIcCJNlNkIhpkW+TCngpMUWZD7712HqCl8Cg=; b=aXqnBaZj7p+FQCHaUlR+9KOl/
	iIMrmW6MHERG0Flm0boT1QFesJCZELyMBloy2O/wJjBII0/FbZMzAhAEvefR5dsPRKCT7FC1aT76w
	CEgsus24yqfKLEwwDNeKRC47XK04BxaPuL5+iC/lt1QxvttHhaEUFQTd5MIHk52IdIJa0i7P846Q/
	0S0kuY0tA/IKIxrHP6kDgxs/D8QUaWFIwEwoATnSxoHj7H2ARe+DT2MIoUrBB9XK577TblfoklRAU
	k4Api4DjFzdyq5jSDnSKxms2u9iZvrghVtUNlUZNogYFVn8SmHgQGzfKbMOl25dJfFakoGizad8v4
	e9p19x9PA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lil44-00GFIS-Rd; Mon, 17 May 2021 21:46:17 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lil41-00GFI3-Pw
 for linux-phy@desiato.infradead.org; Mon, 17 May 2021 21:46:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=2c29vC0qKcM3TMfW1PZOPvZHvtSH+6wwOr2TASgq6MI=; b=nM9E4BqhFPqNsOnVN/8/B2TzHa
 F0+sG61KGUe4u0zThsW5ac7clf8M7qHx4JKFCL9TqjzOy3zOJC+RgupfeL823dKmggTgp/TDu8qJt
 p3I28LGyyhzpy+oUqCaYjbU40WMhIY7R8mH0JN3jYmtrccU5oB3EHH1geOOPCayZ/ijHl3vYIXTuH
 rnhNF/4Rg89EWc2cGah7BCs2lsvKVWIDLpdZyNYHK+CX+yucUhf+wdazLauGqvuQuwMmtV0RVQp0+
 53yi78Rfg61pOGKRSC10kQr0GhtH6IFQDVT5rDd13OHTYJZDVN7IXkpZor0Z5ZOvPcU0zkIKeSKT6
 zv135tzg==;
Received: from mail-ot1-f50.google.com ([209.85.210.50])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lil3y-00EAWE-PF
 for linux-phy@lists.infradead.org; Mon, 17 May 2021 21:46:12 +0000
Received: by mail-ot1-f50.google.com with SMTP id
 u19-20020a0568302493b02902d61b0d29adso6858359ots.10
 for <linux-phy@lists.infradead.org>; Mon, 17 May 2021 14:46:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2c29vC0qKcM3TMfW1PZOPvZHvtSH+6wwOr2TASgq6MI=;
 b=Z4EGQdp8dLCJo2NDcWi+l/PzWO4/coEyth1WSXfQsh615iNpYCEJ3V4uYltOzJkYTa
 LguhrrcBHtcruQITULNLwv2gnP9rZhH/E0XuunqQHEwJD9xJKWiDzC8MO4BhdM1KOB8d
 xQqG0N4QE8sNIu/tjNZPxDMQf+bRY8YDEK59BLe5nC9iI4csOFRXKqvCk80UGYVAPfs0
 jXL0acNxYF7cQiJxUG/rpHsrZgF5aHZkEsfz0rfMHLdHlWy8HkBilmfIorO6D7gzFRIr
 idYT3CtmVdf+fSmp7iFlDB651toOTYFPX1k62v/ZY3ehRXjLIHJBet0nyc8T8PrShmCf
 voCg==
X-Gm-Message-State: AOAM531MCNXfR19tcEp/qHTlRaAjFdA3nYvdGK+wRu4te6rcdJn915B9
 Zig7xcG8lXUcbVKZIZWLxQ==
X-Google-Smtp-Source: ABdhPJzu5K79pO87mnJ6hivClDDk5leBpMurj+pcIgh2s/97ouyz2PJUEJiqBLhW7sAC/lDGwGNjSw==
X-Received: by 2002:a05:6830:1256:: with SMTP id
 s22mr1283245otp.333.1621287969428; 
 Mon, 17 May 2021 14:46:09 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 2sm3408945ota.67.2021.05.17.14.46.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 May 2021 14:46:08 -0700 (PDT)
Received: (nullmailer pid 3258346 invoked by uid 1000);
 Mon, 17 May 2021 21:46:07 -0000
Date: Mon, 17 May 2021 16:46:07 -0500
From: Rob Herring <robh@kernel.org>
To: Stephen Boyd <swboyd@chromium.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Clark <robdclark@gmail.com>,
 Vinod Koul <vkoul@kernel.org>, sbillaka@codeaurora.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: Introduce Qualcomm eDP/DP PHY
 binding
Message-ID: <20210517214607.GA3253863@robh.at.kernel.org>
References: <20210511041930.592483-1-bjorn.andersson@linaro.org>
 <CAE-0n53CxUfHerU68ShKiDPGRSfB-2Cwbt+aHrQsyF6XSMc=CA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAE-0n53CxUfHerU68ShKiDPGRSfB-2Cwbt+aHrQsyF6XSMc=CA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_144610_839680_E16F46DF 
X-CRM114-Status: GOOD (  15.95  )
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

On Tue, May 11, 2021 at 10:24:06AM -0700, Stephen Boyd wrote:
> Quoting Bjorn Andersson (2021-05-10 21:19:29)
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> > new file mode 100644
> > index 000000000000..c258e4f7e332
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> > @@ -0,0 +1,69 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +
> > +%YAML 1.2
> > +---
> > +$id: "http://devicetree.org/schemas/phy/qcom,edp-phy.yaml#"
> > +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> > +
> > +title: Qualcomm DP/eDP PHY
> > +
> > +maintainers:
> > +  - Bjorn Andersson <bjorn.andersson@linaro.org>
> > +
> > +description:
> > +  The Qualcomm DP/eDP PHY is found in a number of Qualcomm platform and
> > +  provides the physical interface for DisplayPort and Embedded Display Port.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - qcom,sc8180x-dp-phy
> > +      - qcom,sc8180x-edp-phy

Is there a difference in DP and eDP?

> > +
> > +  reg:
> > +    items:
> > +      - description: PHY base register block
> > +      - description: tx0 register block
> > +      - description: tx1 register block
> > +      - description: PLL register block
> > +
> > +  clocks:
> > +    maxItems: 2
> 
> Can this be items: - const: again? I think having maxItems means you can
> have one or two items, which wouldn't match the number of clock-names
> then.

No, it's implicitly 'minItems: 2'. But you can have 'items' if a 
description of each clock is useful.

> 
> > +
> > +  clock-names:
> > +    items:
> > +      - const: aux
> > +      - const: cfg_ahb
> > +

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
