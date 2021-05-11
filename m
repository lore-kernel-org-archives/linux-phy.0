Return-Path: <SRS0=RARg=KG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36A5FC433ED
	for <linux-phy@archiver.kernel.org>; Tue, 11 May 2021 14:25:04 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D79E061376
	for <linux-phy@archiver.kernel.org>; Tue, 11 May 2021 14:25:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D79E061376
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EEAOmemhY+676+6hpp2eeUWBrWcoaciRJ6m7mtll/jE=; b=NfCKJv6adYmuXQXx+4xHL8AVQ
	wCU1bnK/HJiZLvJPk7SUpGdSozazAvvsvHGJ6oYq2VKmPnS5BCFPEr9eHspci8eHlFHZ0YPx0t0oo
	Hzou2rEMhov7LVV36qC5WOPQWgAiuaDQzMX8gLvjo6Nelwa8ULrJUF2Skz25FDBPSXEMkgfaZ11rk
	hTThbk5iLvlu8BtXVm60Y4a1V+VdbDAnXYfQmR5iisDij/xuC/VVssmDrQDuNLQiM7wUPCQdSbI07
	OMRlwxOZGyU6nlYF8X+UMtuH/WP8xaIBTfGhW6Q/1ZH3JrZ3a6SVq/Vs4N8BXOAFgwyUi1KJCWBEl
	eIN2QdGIA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgTJl-000OnY-Pj; Tue, 11 May 2021 14:25:02 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgTJj-000Omp-Pj
 for linux-phy@desiato.infradead.org; Tue, 11 May 2021 14:24:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=1EMn+ug4jk4cL2SkKvI78d9MzgAfHXacPRek3Et9YsI=; b=Jcn2AgyeEB7JGH1T9w6bxwRsVR
 SPsaBVVRYU+rIenQEmZTRkxHnvX6u9v87nd6TCfDlmWC5pg4/a0oNb3oV1v8jsnz4zth5Xw6Rf5EG
 eBMg6Oz4F28OvXg+7veuUyJ0TsWr4MQ48/SoPu/5vYZWUb0m9m+E6kpTjggxLgKp71nMEUHbXT0GE
 j1YHAA325183nFPCqZDLUH/+W/CsOdqVImjYUZI2wehETCO2+kf7UU4DhBEI9GzengryqavmZ6I+b
 AWZVvnnt3IrDsnaTC8oZjchsnkABbwktSk2KpvwzqF3vFCdT+Hp7TJxt7U++jEC0IDyatWX/F9J13
 hH1j5DhQ==;
Received: from mail-io1-xd2b.google.com ([2607:f8b0:4864:20::d2b])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgTJh-009fPw-AP
 for linux-phy@lists.infradead.org; Tue, 11 May 2021 14:24:58 +0000
Received: by mail-io1-xd2b.google.com with SMTP id a11so18326847ioo.0
 for <linux-phy@lists.infradead.org>; Tue, 11 May 2021 07:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1EMn+ug4jk4cL2SkKvI78d9MzgAfHXacPRek3Et9YsI=;
 b=TuMNCdx68RMCsdfYeAnUoJcBw0Ji9IGAhacmYc96OyAcoDi6hLo0O3E7Wg0CrW8Tq+
 TtLx7Xgi4YKMrRk9KtHl0gAmpXJyEvwf6YIIK4dpTmeyoFufLIKBCpyzzK6PKqOFmKGE
 JjkSIxqjYfdXIgQ1t0HG25Iabtz8eTD3Kq/FDmHL+1rLvye9K6vGFyDfzuYFMY4npMYz
 7a+DFOUqys9avImy+v+L7CvC2QH5DkrsXxPZuLM7I17G/pqORgwMi/zZBv1hIDS5v2tH
 cu1bQ4JWRpwlyF+TPFgTg4sY5v6Z7QwUBmv+8PczSb+7Lf2aO558AxgmoC08lePPnSrk
 5QtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1EMn+ug4jk4cL2SkKvI78d9MzgAfHXacPRek3Et9YsI=;
 b=cTdJFJvkZ2a4Pq0bLV+NmSeV3j1piB55dg7BgEwRpdGstGWoVauwflSv7mhh0J75Pa
 2JPXE4dwYX5qqQ1tLRGAjuw9qT88ckiDG7i8urafmsdz1ttABa2A9OVutnltx2KztHYD
 0hhZo5ep6IFk5PDaFyo0RTsThvVciCHN0Db7ToO4qQaS4h1JCLGhCRZXl9i1ruZLjwXd
 kx/ijMcmUXF5qqCGfpO9hK9mdTpnJiJbGHupatIIU5p6nz+5uWx1TtRdsLTkxAxFad/2
 hn+6fEX1CuKQ75fdNqQ/AlVbABlKnXOgnzjUYyTuK59d1Nrh2Hl5sfUT0ESz4IZk/qNw
 ayww==
X-Gm-Message-State: AOAM533wYcKyqLZu+20uROSmC49ENUNYn1ISQghM+LGXsNh8XSyWm7SE
 M5k7XLtQ6VOxV9WiMzzBl55QJVwdxe3bDAL8p8s=
X-Google-Smtp-Source: ABdhPJxuDTFCQqh/u7tpwKhKnCbOYxIzzy3KdeEps13QOeZpdnAnVfgSTnfyacPf2SkeCmFaQZmqHisgBCF6VssmBmc=
X-Received: by 2002:a6b:4f07:: with SMTP id d7mr22042896iob.160.1620743094970; 
 Tue, 11 May 2021 07:24:54 -0700 (PDT)
MIME-Version: 1.0
References: <20210511041930.592483-1-bjorn.andersson@linaro.org>
 <20210511041930.592483-2-bjorn.andersson@linaro.org>
In-Reply-To: <20210511041930.592483-2-bjorn.andersson@linaro.org>
From: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Date: Tue, 11 May 2021 08:24:43 -0600
Message-ID: <CAOCk7Nr9jAUjt9nLN=52xwsXP00=7mTV6HcdGzr5D2LTzBepLQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] phy: qcom: Introduce new eDP PHY driver
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, sbillaka@codeaurora.org, 
 Rob Clark <robdclark@gmail.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Stephen Boyd <swboyd@chromium.org>, MSM <linux-arm-msm@vger.kernel.org>, 
 linux-phy@lists.infradead.org, DTML <devicetree@vger.kernel.org>, 
 lkml <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_072457_392802_D8EC1EAF 
X-CRM114-Status: UNSURE (   6.18  )
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

On Mon, May 10, 2021 at 10:21 PM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> Many recent Qualcomm platforms comes with native DP and eDP support.
> This consists of a controller int he MDSS and a QMP-like PHY.

"in the"

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
