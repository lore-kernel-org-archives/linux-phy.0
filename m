Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C45AC44507
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jul 2026 20:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qFYd4INP6zov9R401yDakawwEcmpb8P0aimIUBp3EI4=; b=M0igZF+sP8XNMr
	ZJ4kL8LqyEISFImAL6kAUUkMhnbLcyk+yQEEKxv2HOFkl2NdxW3xh+21YjEjbsFdlS+x9NgMI++2l
	hpwXCzBWHl75ortzzHFRitLP5jRQuy61A6PJjkbThcVnZ7tltxGd6obMjcSMMMEtQATE5+Hn9m/37
	qNXL+Ve5JnFJ4YB/fMeiiJF61CIEnZH3bbZ+t5Z/QrFwO+33HyqxW/tfoniuM5WZ4Kjt9YK5g8Yn6
	DrY9tDW+0mnyN5ew10h5Dw+gHspBwT4QpOUTY0yoHLTKigAZzR3hb5e5I33I+JgLUEEE/FQkbdZtZ
	6MnjBphDuR1seY5BN8NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk5nX-0000000FqWD-0oHd;
	Wed, 15 Jul 2026 20:01:39 +0000
Received: from mail-ej2-x01.google.com ([2a00:1450:4864:34::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk5nU-0000000FqV8-2AeR
	for linux-phy@lists.infradead.org;
	Wed, 15 Jul 2026 20:01:38 +0000
Received: by mail-ej2-x01.google.com with SMTP id a640c23a62f3a-c15e0279316so110881766b.0
        for <linux-phy@lists.infradead.org>; Wed, 15 Jul 2026 13:01:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784145694; cv=none;
        d=google.com; s=arc-20260327;
        b=foZIM+QEtt4BRSUhIWg/LFbNlP82UCyAlb0aygmTDg+IwZYhVoYQoBcXtStM3m4UeJ
         MME5XXzYTIHm3gTMddvuKjL842i+MUsGtsU32gXw7tyEiwONfFUYZoUToc/ELOnor8bL
         9OdX+86Y+pOekTAmiINf4J54vy59K5xFYHsN6dko/5wYS/vmnN7vHxlg01sbC6K4svvd
         BCHgKNUQZVRhk/l6ePj+xZl95eRI3Nb0GhudELxb/ekeZYCMQ7yxi4rwhPS7qoYgi+ML
         J6/1AoK9FcINkU5euCjTdIpxpO4GcOPWg6WGGzyOg4CRtF0Js51sDIOsxLyh3LvQT/Uh
         E3aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=a2jfr+/m0lPzYMZ26qr8HScAjmTZxYpDuo9oJofBLFY=;
        fh=MFKvEcuPCiPmFN2edHqzL+bQRiDBKuZt+xY/X93wbdg=;
        b=prW2cQtuUiO4jeCP97+qyufwUriWLhXTcUpATAbWfS3h2dxDo+yJludTZUo3CKPOqR
         x3Q/IZtWC/Sx6UcsR94aw93UZ0h/WZ2kxiZAF0fn4ECiM+/zQLP8BvKf0wWpGLQw51cK
         tuWUxwQ9y8qG1DaV315mu5fWzAS2lyDF9mNx+AYQKxzIi27nszXyT78tb+EA7Ze7bg3/
         MhmYoq+CKZZiIPv3hIfo9INHEicF4uskIkeJLgwldfH0G0WCzeFMkLEKPugLO+n7+CDt
         a9a0oevAS9QpFjN/tfj+jYsyWdAspWi5QQCmn/lVFicDrcn/XESZiSRRtNt6p4w391qk
         Kvpw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784145694; x=1784750494; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=a2jfr+/m0lPzYMZ26qr8HScAjmTZxYpDuo9oJofBLFY=;
        b=l99sllmCHVixJo1AVoxMj4MZEhPn6rZOrty31e/LwM01uhoIeQZ5AS62hydAtq7C2r
         yZmYdkUU0KPZox6LevF/rUgrvSAzY89H3WFcNvs1VswNFr+sejMRSQfVjaz/I2EvKAge
         ZvIl/hT5aklzsliJRknLAmfuijcPAHCC7vCwR58PedIDZM2HE1NH/U413rgdEefxmbek
         qpX0t0ATjDGwKiX0/zwcJ4iNGynVEOQXla1MBG1eHiIZTG8V5qnUAIOQxtHsfcjTyxrc
         UUiMEMgaS/N15lUiYIhdDQGQTBHfE9LhAyi6RgAbe0hS4BpYqTihHWDcOtv/NQO9B5dq
         H5wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784145694; x=1784750494;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=a2jfr+/m0lPzYMZ26qr8HScAjmTZxYpDuo9oJofBLFY=;
        b=YzjVJQgs8akLb6DW5Wrx+p/25upiK1bNYJGTZkFoCyR5bpJDF3T5DFv/GAuObnghAX
         vZOg9Nb8OrxzGwBaH/Y4IIhyU2hyFO07XIpQKO80/GM3r2MhQcYhws685d+MZyED9noH
         zdMshS+pq3LKHi1qRNd29g4yQz+yRo6NAnIfPAbdcMagNQSZqabSCZHz3CB3RsfqmVJm
         qrmzF+9ttDrhhGT75oKOR5idi7edXs/5axov0t6ERCNeP7IQjwQGtrMjxrJgTPgio9XO
         /wRz13eoa6BvMlOY97UTPG5Wr6bwXIDVoDQR4hgIVc52AIcDXrsrCpV4c8B2BG/EKqYx
         JSZw==
X-Forwarded-Encrypted: i=1; AHgh+Rq/DFNqh66x5F3Uz3srWk2k6dXX8hu0BqFqTGoKXC/h0Dgy1HeKRwnrBoKbojzOWlfyaYIQyZoQa0M=@lists.infradead.org
X-Gm-Message-State: AOJu0YxqLRcKkLnNoqnIomi+pjaK0ynT8bqk4yeszs9LmH9854JCitZJ
	+MANH7nSyfnfDNpErKK+V3VEzrCHNRwJ9XmJpMxJbTtJcUXJgmrKWNpgMiwMgcBvhkHduEBNsAM
	OJ4mLH++GrI1wSPIuBYTODE2k4gmb2Z0=
X-Gm-Gg: AfdE7clCSkmHYQRlAt9KAlvUewODSE+tmJbOo3l5kBXnfC6qj6nC3NSH0l2lkx1kEce
	t9kfqBCpZpUNZdzbxhLb67DLKZ/w/oG5oSqeUSnN8wh3tMTj8qW74dFRiLaN1YhPJSPrRfmV4I7
	BBbFU384EzeCTDS5kmbLHSh5spehrMdafHdo+sUPikb+Nx1PIbARQzgpPo25bHBJ7DDtZDoGoOQ
	QE/za2bK2x+KKbm8sOsIs94laqcYRV5gR4jr+UObKR5dIr8VRojgOq2kriQ6pqfZGK3FF+oFqY=
X-Received: by 2002:a17:906:514d:20b0:c15:a1e8:c141 with SMTP id
 a640c23a62f3a-c161f39d844mr780858166b.30.1784145694108; Wed, 15 Jul 2026
 13:01:34 -0700 (PDT)
MIME-Version: 1.0
References: <20260714191341.690906-1-coiaprant@gmail.com> <20260714191341.690906-5-coiaprant@gmail.com>
 <20260715191451.515E01F00A3E@smtp.kernel.org>
In-Reply-To: <20260715191451.515E01F00A3E@smtp.kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Thu, 16 Jul 2026 04:01:22 +0800
X-Gm-Features: AUfX_mz1azszxJwrCVQmAtzoyTuEVivMl9NuC_fGRw6nOWKIq7dE8EPDVXJyALg
Message-ID: <CALj3r0hFMRb4iX+=JUjAzBskgXJPU3xdwz_pmg6G+v3f3+_XAw@mail.gmail.com>
Subject: Re: [RFC PATCH 04/10] dt-bindings: net: pcs: add rockchip,rk3568-xpcs binding
To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, 
	neil.armstrong@linaro.org, olteanv@gmail.com, robh@kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_130137_169509_0E2FF509 
X-CRM114-Status: GOOD (  11.49  )
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

> [ ... ]
>
> > +examples:
> > +  - |
> > +    #include <dt-bindings/clock/rk3568-cru.h>
> > +    #include <dt-bindings/power/rk3568-power.h>
> > +
> > +    pcs@fda00000 {
> > +      compatible = "rockchip,rk3568-xpcs";
> > +      #address-cells = <1>;
> > +      #size-cells = <0>;
> > +      reg = <0x0 0xfda00000 0x0 0x200000>;
>
> [Severity: Low]
> Does this 64-bit register format fail dt_binding_check validation?
>
> The example is extracted into a dummy root node with default
> #address-cells = <1> and #size-cells = <1>. This means the 4 cells here will
> be parsed as two items, which violates the maxItems: 1 constraint defined
> in the schema for the reg property.

I will update the example to use
the correct format that passes `dt_binding_check`. The proper way to
represent this is:

    reg = <0xfda00000 0x200000>;

or with explicit address/size cells:

    reg = <0x0 0xfda00000 0x0 0x200000>;

I will adjust the example to match what `dt_binding_check` expects.


> [Severity: Low]
> Will this fail to compile during dt_binding_check?
>
> The example uses the PHY_TYPE_SGMII macro, but the required
> <dt-bindings/phy/phy.h> header isn't included in the example.

Yes, you are correct. I will add the missing include:

    #include <dt-bindings/phy/phy.h>

to the example section.

Thanks for the review. I'll address both issues in v2.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
