Return-Path: <SRS0=D930=PP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2B0AC433EF
	for <linux-phy@archiver.kernel.org>; Wed, 27 Oct 2021 21:12:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8AD9D6109F
	for <linux-phy@archiver.kernel.org>; Wed, 27 Oct 2021 21:12:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8AD9D6109F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+aiPXQu4Qa5KiFN7I1HcGglckx65+mGg2bUO5ynNJ4=; b=l3hL+7NWMXb79q
	IvyHaQjJzEM+9VbK9/9hcAXiJj2iPvKbgF8a+/W62uwKkbbNLMBVb5McUIN8KwI/s6KY9fQdYevwv
	AkWaWjkljbF0194f35zGNoAET1O+EJ8vx/lKuD4dMJlxPpFASLEJYILbBxX/zMNWfHeH4u2qQ5Lfn
	yFzEAP6noZjbqcA68hD4FL2sflrcah9eSDjwJNTJ3txmxgkcCRCc8KpQD0CY7kcQucxuNj6vONHRN
	FrzHtykKff3/YPjCG9kXza5PtmEZ5s21diKO77hnGCxhIysaVUT8LFqKP8uX37bLZbFZil7Gd1q3m
	Ccbrsssrx6UWcGtj+GGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfqDc-0069C5-WF; Wed, 27 Oct 2021 21:12:21 +0000
Received: from mail-oi1-f171.google.com ([209.85.167.171])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfqDZ-0069BI-Un; Wed, 27 Oct 2021 21:12:19 +0000
Received: by mail-oi1-f171.google.com with SMTP id o4so5284063oia.10;
 Wed, 27 Oct 2021 14:12:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=k3QbaEEwsED/cBYuJpMYmPOuATHo/hhXNN4M6qAU9G4=;
 b=pJwZFdPb9Im5xwEgMfYPgLIu0HOuPBwedwTUnr3fYsK6aQOuh5BWQx1/CBvxHChCz0
 ymDC+rOCyOP6/r75imE0zHBvnj3058Fb1Ase9NPi1t7qkwl4a9a/L+4vr9PVUP13hGXn
 UwvIGASjzSQYx/Q3p9e9RUxrahTtveQxUeCHk208Bx0VXsZBA5TZ4sLSsm8NaQQQCQmx
 813xW/WUsx4kNl9icpAFwYin5OZ1UX28knL+usiKierKOfmonK++4mmLnXoK8IFt8lyF
 3IZBU0fYDzeJxMbK621zjIjZXDlLWGm/kT3dbIphHdzOSEIEjm6OaPdBacXNBNh2dh5x
 1PQA==
X-Gm-Message-State: AOAM533XVv198MA70auD3ATNmhTa5t0Sd4l1VlfrX1LfPALUoq/4XYI4
 4H6J56BjfHxHLmSa3FOZkA==
X-Google-Smtp-Source: ABdhPJxe2ua1/gV81De27mOC9lJwqcKmxLbHs05qHWaf/qz4cHIdZnnQ1ssNAf0BJpeFxKvm5ffOhg==
X-Received: by 2002:a05:6808:2189:: with SMTP id
 be9mr40292oib.145.1635369137058; 
 Wed, 27 Oct 2021 14:12:17 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id l7sm381352oog.22.2021.10.27.14.12.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Oct 2021 14:12:16 -0700 (PDT)
Received: (nullmailer pid 2169171 invoked by uid 1000);
 Wed, 27 Oct 2021 21:12:15 -0000
Date: Wed, 27 Oct 2021 16:12:15 -0500
From: Rob Herring <robh@kernel.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: kishon@ti.com, vkoul@kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 robh+dt@kernel.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: Add the Amlogic Meson8 HDMI TX
 PHY bindings
Message-ID: <YXnAr0nIuzeKFhLm@robh.at.kernel.org>
References: <20211020195107.1564533-1-martin.blumenstingl@googlemail.com>
 <20211020195107.1564533-2-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211020195107.1564533-2-martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211027_141218_036955_CB7D7534 
X-CRM114-Status: UNSURE (   9.44  )
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

On Wed, 20 Oct 2021 21:51:06 +0200, Martin Blumenstingl wrote:
> Amlogic Meson8, Meson8b and Meson8m2 all include an identical (or at
> least very similar) HDMI TX PHY. The PHY registers are part of the HHI
> register area.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  .../phy/amlogic,meson8-hdmi-tx-phy.yaml       | 65 +++++++++++++++++++
>  1 file changed, 65 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/amlogic,meson8-hdmi-tx-phy.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
