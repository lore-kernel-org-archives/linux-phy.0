Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E107EC46CD2
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jan 2024 15:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ku/9WUK0xljqnOsxUfbuxnQU9I+47anlGkcMPqddzk4=; b=ucD7ROcqirUsE0
	ZJnwKBNYQaNdNTByodmxSe7t3tQMVLTFwQ/d8ZjtE4q2ymIl8BzW1fsMrQPsAOYKJFMwBWDlCVAu4
	0yID6OrFkcEhtV7yRynCOuW+eguGe18sU0nKhEsYHbNHCkMEfrz2CpyUqUWJ7sb6D0zgmFnb6t4Gb
	nMuqYU6kKM/XxN2tI3Tj68DNCg0VoDLVuSV7y9Kryv0KfEzeBq9stnxtrX0k3zSHXGJL7kHqh2Ha5
	+xktq+rzCFccv60/ek0TM0Mykh2BCbVZAvo8KnoGrEhTExfQDbHIPxHw6b8jgV/mfxvh6Q0TXyrJQ
	MvXybH6VaaOfBMNkNr1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNE9B-008gjD-25;
	Tue, 09 Jan 2024 15:36:09 +0000
Received: from mail-yb1-xb31.google.com ([2607:f8b0:4864:20::b31])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNE98-008gio-2G
	for linux-phy@lists.infradead.org;
	Tue, 09 Jan 2024 15:36:09 +0000
Received: by mail-yb1-xb31.google.com with SMTP id 3f1490d57ef6-dbed0710c74so2282177276.1
        for <linux-phy@lists.infradead.org>; Tue, 09 Jan 2024 07:36:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704814563; x=1705419363; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=B2tM8vxZAXNbZ5/d+OHbCOx24sS+92ZFKg3NpU+MKIk=;
        b=AYL6gpQUHJPlMiKetbjAOx/ggfdI+Y97M8uuW9Ws4SSv+EsiNFFuW9kgWIq35kC7F5
         XuJdZd8N8+hoz6g75MwkGOOHTKsx2ZAz/JU0Njjv6OCXR0qoA67j8wC2q3T8YH8SFaSr
         c5A1X7bRajn95b2vvr+KVJN275CIwa3dfMSDm+G4xvPPKObWvpWqj+gqHEnFt+6NONEX
         eonf/gD4TexBOzYW5rbgD+vgkonzHMfWyiyjkymZ3xusmzwkPLo4NU6S1ZAAqgJsC3PK
         /bbIs0iAXXn/Ek2gReUjPEASkg41z9UR3hoSIzp9Vsohx9Fu4WtVnxPRB/PLbkLL02A7
         0TYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704814563; x=1705419363;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B2tM8vxZAXNbZ5/d+OHbCOx24sS+92ZFKg3NpU+MKIk=;
        b=Jif5frM4fNkYV6kyYHk6Wu8aZkIjYlkgo+S8+dl/8sowKONB9oIPEv1AalOjEDeRPp
         uZUIbqfLsfPHStUQs0C8BQWWjkO7474TNK7WPZcXOOt1PB2iy4BBlCtzz0+cQPuwtTwO
         p7obqx2SyfVI+CiuxQy3dAmBij9z8wWrHydS0pQdaYxS1MpqNObWt+X+7amOqgatSKyo
         aVr55IcHelDnGX8Mya2wkjMVXCGthgRIxUjmPp9a+6jamFsYHM5chLTnEvi3JBSShwtX
         dfCi1yny6RxcJrWzA0O6KOjWHa9FgjX8hPx4DNm2UrEL2BTDCuvJqFMrjZuabSU/M/PA
         Ad8Q==
X-Gm-Message-State: AOJu0YzneNA5nttxxzalk1FDpl7StdTYQdDRhomAmO/rItSWZSOqAR3/
	G/x6HtoX801+UyYx44ImcfjdfeGSY/YRQvX8KLUaruWvKiy6fQ==
X-Google-Smtp-Source: AGHT+IGhvmVbgK5QSCM78Fj7fEzJDq/cl7EfGyyL3wn5XAUPlaljQ/YHVR9AJQpPJSTtiQKIPu7x6JJaNyLhjMUWGo4=
X-Received: by 2002:a05:6902:178e:b0:dbd:ac60:bcd4 with SMTP id
 ca14-20020a056902178e00b00dbdac60bcd4mr2848550ybb.75.1704814563492; Tue, 09
 Jan 2024 07:36:03 -0800 (PST)
MIME-Version: 1.0
References: <20240109-phy-qmp-merge-common-v1-0-572899a14318@linaro.org> <20240109-phy-qmp-merge-common-v1-7-572899a14318@linaro.org>
In-Reply-To: <20240109-phy-qmp-merge-common-v1-7-572899a14318@linaro.org>
From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Date: Tue, 9 Jan 2024 16:35:52 +0100
Message-ID: <CACMJSevhoyNhe2oG4OmNMWK+Y5fmCjJ340WtTPcrnG=9xx-eWw@mail.gmail.com>
Subject: Re: [PATCH 7/8] phy: qcom: sgmii-eth: use existing register definitions
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_073606_798486_6C82C20A 
X-CRM114-Status: UNSURE (   6.61  )
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

On Tue, 9 Jan 2024 at 04:04, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> The Qualcomm SGMII SerDes PHY is a QMP PHY. As such, it uses standard
> registers for QSERDES COM/RX/TX regions. Use register defines from the
> existing headers.
>
> Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
