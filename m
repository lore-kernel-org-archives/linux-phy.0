Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D782C4167D
	for <linux-phy@archiver.kernel.org>; Mon,  6 Nov 2023 09:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oJkxE47ur0zflqgFSoDcwdNSPhklEJuVsBmZZWlfRwg=; b=Tzsw7HpvOEyJfC
	EPxNcxbPmY1C20uPkLI/xwNeTDPmHXJnK8PC3shFkaVzA43cjaYRZXC4LCqu51SqnDLzfASNDMoBi
	nNKwofkIRtCxyFaR/aItLcPPAFuXRIKt5rftJvw6zpDnoi7iiLF31uVWQPpm8IUW3xS2MTtVPYzXP
	PI8LvnCn60i3Tr4VLWi9yV+Cd/Oufz/I/FVdeOv+RwPXBYf+C4arq8CC28LnyBx0F3cYPE/As+IKB
	Vkq/W23fzDCqtre7l2KTIm5UhBhMVbmg2H5KVrk0SbHdYWo7DkSgV1/dlIkAozWs23LeMoA0ExSCp
	KPHuN49wswm3ZKseoNfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qzw3g-00GBMi-1B;
	Mon, 06 Nov 2023 09:38:12 +0000
Received: from mail-yw1-x1136.google.com ([2607:f8b0:4864:20::1136])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qzw3e-00GBMR-15
	for linux-phy@lists.infradead.org;
	Mon, 06 Nov 2023 09:38:11 +0000
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-5a84204e7aeso49431957b3.0
        for <linux-phy@lists.infradead.org>; Mon, 06 Nov 2023 01:38:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699263489; x=1699868289; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3cO/egBtCxkf8rsVhft3dePn+2EXY3zf6wj/wxCfFyE=;
        b=QI+Clz62hq4CubO8Cm+CdasRtaqJGKIUu+O3yWlirKm5kQLtyniZ3xGIstgKB5nv2F
         Pmzy0bqb1BqBDE8hLdv0W2WnSNMrHjycI9COqTwQlywlfBSwooxLeNSu/4JPsQsYVV4d
         IOXbgmIohZHQc9mJ+ZAVBdX3RLNvI12CyyWRgbPf3xbw8dIqYG496VuDC3R/5lfQue6U
         myIEzNud3FZzQ2Bs1nunwu6cTtgPIPBR0dq+XZzYMP1MaZunxkje2ZgbpX5Q+cUcYHpc
         Q3B8OxF4ASV/DIWXJpo1RM8tHtvc8ggqBhmUAdQYPb82kllzr1aooy/ANASNXGJvkQvG
         3eKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699263489; x=1699868289;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3cO/egBtCxkf8rsVhft3dePn+2EXY3zf6wj/wxCfFyE=;
        b=cQCIKyayQiUsz/A0lrJaVeIKnjLt/HHJlQsE0PVv5P1Ukb9IsjFJb+MxQT8MWQBk8y
         rXP7Zp1WLOl1BHtceNz938BowAnxesL3STn7jFSjawvYN/K6VKuW+VlPY2LgGmNdsXkm
         qIYOO5xAIF/cAAXPvSBKMMYZjhBt29ggjiXsyTu434HkXK1ZCf/KFj8bFs7d4kcHNPLM
         cNru7D4WVUDkU/Z3Gw94vqxrWJZEy3tohxV+n2BojGmEgzt7sqhi+82SwEz2UQ48yc4w
         CG6kpFbOwgceCXXQeyo/CyIBnicZ0cnx2tG75Inv8APrJ3C8Xdz+ulW69CMe99CQBqDQ
         JJrg==
X-Gm-Message-State: AOJu0Ywt46J1n57AxwoW8kL8bJssV74OAWt5QGstMEugJcOb6SQIn2ow
	PzHNnILzh4GH67Wotc6eiaORbMNFFLES5BUJRLFyz/SnJ1p58Ysby5A=
X-Google-Smtp-Source: AGHT+IGC7ky8D7b3izevcVQsGKdxA9HJH3c8t9gGQRm7llthdG3gP39qJFOiqMxznZ5z3ATYe8N7UtVcVuvzqVJkksg=
X-Received: by 2002:a81:5742:0:b0:5a7:af0c:bf97 with SMTP id
 l63-20020a815742000000b005a7af0cbf97mr10135429ywb.6.1699263488823; Mon, 06
 Nov 2023 01:38:08 -0800 (PST)
MIME-Version: 1.0
References: <20230911203842.778411-1-dmitry.baryshkov@linaro.org> <aabb8345-7b5d-447d-af79-1e5743465315@quicinc.com>
In-Reply-To: <aabb8345-7b5d-447d-af79-1e5743465315@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 6 Nov 2023 11:37:57 +0200
Message-ID: <CAA8EJpoQ0k_4GSQyrziLYn1v942ppzNOvwxN55sLkZUUDWLe4w@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] phy: qcom-qmp-combo: correct sm8550 PHY programming
To: Rohit Agarwal <quic_rohiagar@quicinc.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231106_013810_403033_4DF040AF 
X-CRM114-Status: UNSURE (   9.60  )
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

Hi Rohit,

On Mon, 6 Nov 2023 at 08:46, Rohit Agarwal <quic_rohiagar@quicinc.com> wrote:
>
>
> On 9/12/2023 2:08 AM, Dmitry Baryshkov wrote:
> > Fix several small issues with the QMP USB+DP PHY programming on the
> > Qualcomm SM8550 platform.
>
> Hi Dmitry,
>
> Can we have a conclusion on this series?

Yes. Version 3 of this series was accepted by Vinod:

https://lore.kernel.org/linux-arm-msm/169719381727.165658.9377101716537787206.b4-ty@kernel.org/

> The USB support series [1] for
> SDX75 depends on it.
> [1]
> https://lore.kernel.org/all/1695359525-4548-1-git-send-email-quic_rohiagar@quicinc.com/


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
