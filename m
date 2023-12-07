Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 043C6C4167B
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 14:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EGAEDZameFxKHnSekMSmIqWWjFmYeJzusNjdMeZ63mY=; b=OFm1blKXHpuo+T
	pjAnFybshrPjp32CHIGQNAwOMgg7fydZKDhc5o3T+sc36Jkm04SHTV51iq8eDtaPM1ebqNp6kef6F
	bIP7WuJFGYqVCtuCe11XRKW1ychKyQLRRkV1MoVYH6rHNmVkmmGkoJcdJ8VKnt/RPDfD7OwO4IS8I
	ZgCulunkBMLctYNzSpegR5rAwO+tIbxfy/8ibinDWd6UqYe60nIG872U7lrtSX0u1Eq37mnim3azs
	f98D1dCkiP9xHAlzm5wSy9kfEMVX++rBz2NxvIueEgRt8BkwdeWcvXQtF4FANcI1qE+WqonvKAJsh
	GLsRU2LnsboiFz21nuoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBFI4-00D0qE-2P;
	Thu, 07 Dec 2023 14:23:48 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBFI1-00D0pj-32
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 14:23:47 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-5d226f51f71so8004387b3.3
        for <linux-phy@lists.infradead.org>; Thu, 07 Dec 2023 06:23:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701959025; x=1702563825; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5PB4SuKTXi3vWYEdpE3Wie0ciKcRwFmeYXUm8A8+YSs=;
        b=Y0twXIUpc70qEQ3YUGs7FN9SD1m5NdQDErgduR1/8TZQs6My2pX1V19PBp99QK8A6c
         oecWlQDdfFiKuYr34nEfiVDBmPS931BsbmX4C36uUxMhBmu4K6gGNP++sgdbmY5x9Ta2
         VLEbKOQU+zehSjnv8NexIiH0e9duV1eq4SW0DgSUHEyj4u+PnTVGVZgIhbyodG7Y3VxM
         uPx6iwMDmDbCMyCurpsQeC04isMPrjjdqCJ9sumPCl8SsevzX+O3LhcdOu1aTV+RwCS9
         GCFGZcCGn1jhKRGB9Vty0bsY5Ucm8fkt+2iRYt0j1gysaODhnpcPihLloaQ3b4DJTsg8
         jXSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701959025; x=1702563825;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5PB4SuKTXi3vWYEdpE3Wie0ciKcRwFmeYXUm8A8+YSs=;
        b=lKy2v5oQoxj2ZNq8LLZYe3jC/sSZyVtY75ymU8JNEu+b+Dj6FfHBTgijIAHfPpJ0SJ
         FU7H+y8NlCKG4cGRDsjK4HQnI+NFWeapUoVhxPkOdzSXRtTs/DIZQ/akEo3fyiqX/XnB
         3fwk4oVaw/KSm1Ig19zG1XedDnvGlYXR2x7NPskbiPrpdqkiaKQc26rDpUQj+ES2ZLHO
         hm2UHBUFMiiVsKDw8rYAgOxncVBjlZ3Iocwi9SFGvnQAlKEG1bIS5kg0whP69ORN37Fy
         kMLO5C1dzRgYwrDiTZ5RFvQ/FjigXMZm+qZV4qsONbAFtFGmPbrk75ve4he7dP6jsdY7
         UZwg==
X-Gm-Message-State: AOJu0YyTFUknrrnL93waQ7koN9WX0mQ9zHWgXuKm0xR+h/0cRD8QQFSu
	uw4jK97uOxGpAGZvuJtvs5s3hwvYOBjmZT8ZJLQYiw==
X-Google-Smtp-Source: AGHT+IGfiFTM8GZxS753jZ+JwDwTvVydQKxJP11NtmOlQUFXtGLpBPuy36JI1NK10sQOiZkr4p3dfd2RnJT+bkeuq8Y=
X-Received: by 2002:a81:b643:0:b0:5d7:1940:dd7a with SMTP id
 h3-20020a81b643000000b005d71940dd7amr2399911ywk.80.1701959024962; Thu, 07 Dec
 2023 06:23:44 -0800 (PST)
MIME-Version: 1.0
References: <20231201-x1e80100-phy-combo-v1-0-6938ec41f3ac@linaro.org> <20231201-x1e80100-phy-combo-v1-2-6938ec41f3ac@linaro.org>
In-Reply-To: <20231201-x1e80100-phy-combo-v1-2-6938ec41f3ac@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 7 Dec 2023 16:23:33 +0200
Message-ID: <CAA8EJprAX3d03t2K1aj-ATW-+pcQH+WuwUNcXZDZj3A1wfRw4A@mail.gmail.com>
Subject: Re: [PATCH 2/2] phy: qcom-qmp-combo: Add x1e80100 USB/DP combo phys
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_062346_010987_44A4822E 
X-CRM114-Status: UNSURE (   8.58  )
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

On Thu, 7 Dec 2023 at 15:16, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> The X1E80100 has three copies of an USB/DP compbo PHY, add support for this
> to the Qualcomm QMP PHY driver.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 170 ++++++++++++++++++++++++++++++
>  1 file changed, 170 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
