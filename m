Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB35DC77B7F
	for <linux-phy@archiver.kernel.org>; Sat, 22 Apr 2023 00:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yw6IQMvHQ2W2nL7+JhQByx00nv+sx9eyM6GS/sXLHPU=; b=qtSIzwlpianDa6
	z6LB43fwr0FxzJlHtw5KPibjAkDAyDSIDhqgjt8kxkSeTWSL7r6tSIgvN2r50YWe0bHn7RG0k1Zr6
	yy501EJXVI8/mKYhnpWDRmZ8wcmBKj7VVuhtnypWBntVdiNC5DSRXlPg0WIkpsFHvBoLFF/yPwHND
	6/M9/te8gcMVwEXMpGNuNiLh4gJa3PuG/zu1leEllT6pjp01JE4dW89AK3ROpL2X4OnLK6oovuonc
	EF1o6Hmz6a08/QSU80emhooXGbAW5Fkoq4BGJ7Adeot/kaQg2aYLdItKOY9ob8mL1HtRUEl1RNJJq
	VkOO/2x9KYmLCdw9L65Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pq0qR-00C84g-18;
	Sat, 22 Apr 2023 00:11:15 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pq0qO-00C84E-0K
	for linux-phy@lists.infradead.org;
	Sat, 22 Apr 2023 00:11:13 +0000
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-54fc94476e2so26760517b3.1
        for <linux-phy@lists.infradead.org>; Fri, 21 Apr 2023 17:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682122269; x=1684714269;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=r3HVdBHp8ZBwMLtZhZM5THuZ2ayBVN8mjzgRnQU8doU=;
        b=TjWZ3JK9IrZTvA1Bv6JMW20hD5ah5RMXp0tjjtzTlUyd+jMQ+x4f1teFgMqG+4lqaI
         m+7CzrP2VyA1O97vbAgY8i76DQ0mHZjwNk5w98X0C6Mgm3Q9cNOl1POlCNpQVjWAw4pP
         Hv8qDMxEK5hdPhwikYvjsU9I8ENe3RW9dyYETQwruOElgdzEEtUOry3T97pqvJlkYdWa
         Zcny1b0NrqcW3tqnWqIBpxv7JVQBsyWjrCQQlcfJbHDz+yNkf3H2BqR7TuIvN5+qdbCK
         8mKGbkwQEZgEQxm4iiHHv94lf2GfHuaNBrZkxaGGUvbfwcsZw8VlJNALiCt/xoeVx+Oc
         UYHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682122269; x=1684714269;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r3HVdBHp8ZBwMLtZhZM5THuZ2ayBVN8mjzgRnQU8doU=;
        b=UnsC/ici7cLvly+ruw2brzOrvoSqCezR11MyxRZ27Aj9/Mm3LJGzZeY2t02l9PbuGi
         lE9tUFUgKbwvhD7tQJFgJvBAKxdnb8qR60NSMVygH2vmm/qqMvstXULo8S3AjHh7UxaR
         Zuy/ilzU4SP1hejdPuczoe14avatPK5lEbmovUmW6jlyRzlGvfgjyUsAGFMXpuPBXJRJ
         bq0i9RSs7HydMTUGzYPePhixwbeiJ/m8c7p1cXeVMLt56BXvwTw47Mv286mnXcPntPKh
         lzBb6wRsbn+EBsHv1rflnT4wuq+WZUvEwcgfV6bWVotIGLNT3NM7XORCbkLvAUL9a5ea
         qTfQ==
X-Gm-Message-State: AAQBX9eTnWPhA1OpxLC8fnUbBE2PIi8n0GmtWfKptMsr5g7mlXgt6Yml
	VzO1qJx0ZGlX+kYWbck43bmwexVxgB/iONiyqJ0S8g==
X-Google-Smtp-Source: AKy350axjsvBsIM3jCVhZmPPFcVSlFJAhwx2i17gUtOdiELJB+ptq7C/I/6poiIDNXWz2u2AhTVw2PMBoYbPM4q2pZo=
X-Received: by 2002:a81:61c2:0:b0:552:b9ad:f2e4 with SMTP id
 v185-20020a8161c2000000b00552b9adf2e4mr3038639ywb.51.1682122269662; Fri, 21
 Apr 2023 17:11:09 -0700 (PDT)
MIME-Version: 1.0
References: <20230421133922.8520-1-quic_shazhuss@quicinc.com> <20230421133922.8520-7-quic_shazhuss@quicinc.com>
In-Reply-To: <20230421133922.8520-7-quic_shazhuss@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 22 Apr 2023 03:10:58 +0300
Message-ID: <CAA8EJpov_2TS65NZimVmXe0meNV8rz_wXyNDz_0wK-qQJHW7tQ@mail.gmail.com>
Subject: Re: [PATCH v1 6/6] arm64: dts: qcom: sa8775p-ride: enable USB nodes
To: Shazad Hussain <quic_shazhuss@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_171112_166957_37B1F7B8 
X-CRM114-Status: UNSURE (   6.25  )
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

On Fri, 21 Apr 2023 at 16:41, Shazad Hussain <quic_shazhuss@quicinc.com> wrote:
>
> Enable usb0, usb1 and usb2 nodes and their respective phy's.
>
> Signed-off-by: Shazad Hussain <quic_shazhuss@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 92 +++++++++++++++++++++++
>  1 file changed, 92 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
