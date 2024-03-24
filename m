Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E4DDC54E58
	for <linux-phy@archiver.kernel.org>; Sun, 24 Mar 2024 21:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V91iZaqk6q00RKu56Z4uS29sPOoX5dZiXOKKMF/kESM=; b=3MipAmdT7uqXa1
	X3AixuLzj2f2SgIIWNKcad8muhvUi2PFqBTw85oOUJo//g3Rdzxn7uCum6I99zPRl3saY/oX0azJq
	GVe03FdlBE20ULFFoulh/nQ8RXeWXFeZ4tOJzxBcahkEBicG5rGuGnA7kQmhb3jOpVQjHmGwloJ4S
	WmYTy9p29u0/cxP/SIQvUwcJUvkc1eM61KA6r5tRKTEyYZAkVCE94EJdI+vIeriSq62BnaA3CE/kY
	76A4zEYVeYwdGerOZtgZTGmnqWuICWs7zyubwg24KnO0RJIFgnRDkrNvlpkRSox11b0Pq0QYjET6s
	Euw+O3SFnfcORo1sD5ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roVMD-0000000DUow-2hFZ;
	Sun, 24 Mar 2024 21:26:21 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roVMB-0000000DUoS-1Wwy
	for linux-phy@lists.infradead.org;
	Sun, 24 Mar 2024 21:26:21 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id 3f1490d57ef6-dcc6fc978ddso2841160276.0
        for <linux-phy@lists.infradead.org>; Sun, 24 Mar 2024 14:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711315577; x=1711920377; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8UBUPxS321/AJf/zeuMrnHeAqSxFl6swaOw2l9wbH8s=;
        b=YiLElQ00alIX7EBAGvOCfq/Xcov7YaUXFV3ugTX44REDaP185gbZhKGUK1PVg6XxuJ
         H4h3+ddIO+wLmQqI0S3appbH7oEEmbHZ06spygyyRRBjFWq3LAnL4+H30EHxD91KbUon
         CwXLyw3gmNJFOW5sBawLMUhopToM7+KSXhR/718bt0HCGgXK7oK5P9aZleYQgFTUmVdN
         eo1Hu/PHugcEF4MfzOjaxhSQw3M0Yj97maZT6FRmexqITjUivwGwgRNlRAfRg/kOY8pr
         EiYR2WD+GLgymtmll7Y2qdcSfAsl4HdFKFCMxlQ8y8rg7IzdPzI0JejYclUyYrIwTkPA
         rDBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711315577; x=1711920377;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8UBUPxS321/AJf/zeuMrnHeAqSxFl6swaOw2l9wbH8s=;
        b=HIS865doBJ54w0K9VZBSRD03syIMoUWszfUqFLnhmmxdJeBoRSA7E/C+WcTxH6sRpX
         IeAl09PurvbGcwN9ecoUhFCzFnmVJK/fm+XrWsUk/TReRkUrlYemYvwZeGVaTgAknKv2
         0HVwh72L6I8cJrnDD5U5UiEMQuEdFpSDnGLBIg7kEH/a97ySJ9yEXoue6+OL+hXdA0uG
         A+kefZW2ZTqvYXv83BnaGybZX4Av/qHYD0l6xDojzv3ZBxdsZA5NDd1QsOgGXZ1dBdRk
         5eqwQJ5be/7/Y2z1nMlyLyn4mJmTkd34+YEjuJ+6A+K4Z8V3G4wpjGgtIDn22SV7HgTW
         QMJQ==
X-Forwarded-Encrypted: i=1; AJvYcCUnOWca2+HCjxdWlwkj1IHZ6vd4gwZRphS5HIqaM/CsYoc5TlTgfGVoG3hkeqQMj4HrZi8F72SGKeo+cJLKdSOF9U3Jabi14ZBDjhcRTA==
X-Gm-Message-State: AOJu0Yx4sGzXu8zklhuzbptiBAptFA9XYct8BBW21KlxTLrtNB9qAHb5
	g89iEhhz5+dJaD9XurSeew6GMwE1ACmbP/4pBGlvXLN1bg/A0h+egGvfj+aG95BGRenFsgnNAHj
	7Y2AULle1YK1dO84fMSWom2sKcr1OfhslHJTp0fQe18sq370ppGg=
X-Google-Smtp-Source: AGHT+IG/BGMQhZLtiVAhPS3yZQIGBjfnOqHRCzrw1QQAMhgO2W6ZqAaMDp//3sX/c/QhGU7sxClNAVK8ToaSEIU60Zg=
X-Received: by 2002:a25:d804:0:b0:dcf:a42b:7e2b with SMTP id
 p4-20020a25d804000000b00dcfa42b7e2bmr2460474ybg.3.1711315577391; Sun, 24 Mar
 2024 14:26:17 -0700 (PDT)
MIME-Version: 1.0
References: <20240324-x1e80100-phy-edp-compatible-refactor-v5-0-a0db5f3150bc@linaro.org>
 <20240324-x1e80100-phy-edp-compatible-refactor-v5-1-a0db5f3150bc@linaro.org>
In-Reply-To: <20240324-x1e80100-phy-edp-compatible-refactor-v5-1-a0db5f3150bc@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 24 Mar 2024 23:26:06 +0200
Message-ID: <CAA8EJprPgZJ7hZooJEs1ysn2Py=M_rJguuVdXFuBK757q86ZAQ@mail.gmail.com>
Subject: Re: [PATCH RESEND v5 1/2] phy: Add Embedded DisplayPort and
 DisplayPort submodes
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Hovold <johan@kernel.org>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240324_142619_538132_A9BC2618 
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

On Sun, 24 Mar 2024 at 20:50, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> In some cases, a DP PHY needs to be configured to work in eDP mode.
> So add submodes for both DP and eDP so they can be used by the
> controllers for specifying the mode the PHY should be configured in.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  include/linux/phy/phy-dp.h | 3 +++
>  1 file changed, 3 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Vinod, we'd need an immutable branch or a tag for this patch, so that
we can merge DP changes during this cycle

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
