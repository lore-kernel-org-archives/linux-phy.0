Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CA13C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 16 Feb 2022 02:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ufndWCMA34aLYRp0/YskBKYr2HwKD6LOaDhYE2Tj5E=; b=F4k+uupShWrpiG
	fK1KqXVa6AeIqCSHh8xMYAcRbxn3LZb3cm08Pc3sjUaLoQuHuDkzQuUvnjFa4XPRdQpwK5zs9gu2L
	EVSKq3ktas3AsKtj2Oc4Tsf2fRsl7xmvGoeMSUf+CXVfw+ytTvLxLT3dTTPQ08dHD/0f9VwMf6txc
	RAJ2QCk9Q2HUASTsWPaEahYTawjAaMzmzxCjbREKTScJTEkgOnS7hwmQJST3Y/3RNmOyDxgWEKZnB
	68VSXvZHyqSbk8d/u+X5o6W7I1y3OKv8ulw3eXhFAbHfir/UsHE4stB3Xoe2l8FBr30E/3am0pE3H
	dW17gi9jkdE73Snf39pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nK9mM-005IPi-Kq; Wed, 16 Feb 2022 02:10:50 +0000
Received: from mail-oo1-xc29.google.com ([2607:f8b0:4864:20::c29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nK9mJ-005INb-Jv
 for linux-phy@lists.infradead.org; Wed, 16 Feb 2022 02:10:48 +0000
Received: by mail-oo1-xc29.google.com with SMTP id
 k13-20020a4a948d000000b003172f2f6bdfso907051ooi.1
 for <linux-phy@lists.infradead.org>; Tue, 15 Feb 2022 18:10:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:in-reply-to:references:from:user-agent:date:message-id
 :subject:to:cc;
 bh=eOGRLRkS3e6dTdy4+VsuInylNMPOPtypXWpw081JkCE=;
 b=d3EOKXLfn2QjqppU+AbsJVRiA9w27o8GUwtOTW7lMqgN6+D8QDhBJKyNgzBVV2EibR
 DLQUjHF4BGcIoJ47MhqRcU0S7Dwy8i2sW2j2LseP9rQPKq5sO2TTk4Vy6qtEaCn+t6u6
 dBgM1T5YWbsxE0AO3PH6jBptWbRx24mBTJOBM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:in-reply-to:references:from
 :user-agent:date:message-id:subject:to:cc;
 bh=eOGRLRkS3e6dTdy4+VsuInylNMPOPtypXWpw081JkCE=;
 b=nO2tynZsjez+M7CCKx/ztHfJo66vQUP841m9lbLUvMm9ybRFd0jIbYsOJRS8C9thvY
 l497EBdFs+/tm2Z6vip3ldA3GqxwJ8GEgtm3u6Jdv1uL4rBxcaq83f1RtRisNlUsKRsf
 hKrxB372H0+qDrJxLJonBF7gOHW97TVfGHhxmhR5o+FB6zbCYu2DQby5xfu6uTNwFuJk
 JT6lRBa5G1uWcR7Vy/wLqIGtfa5of8HXk1fkts8ZNCSrj6+09YtoKhI7BegfWG5FVVyH
 lHJGp/0QDeRQQuzPgJ4ho4uUfTixNtrVMGqXodzTw97Pm6ndc8xg+ZkOuy50wuBdkXL7
 6Zhg==
X-Gm-Message-State: AOAM533lWb25vME0o0OrznmE4F3D1ypUS0Phk1fHO1wvWz8cT7zMU/JI
 hQ6Pbj/5FiPJfbxm0BSR9aHMQCW8d+KeVZuxxTq5hA==
X-Google-Smtp-Source: ABdhPJzrN3Y1q7CHe3i8jMiQafAjvoaP/zBlEg6kWGGDyJQIBmexLpOXeN8Dr09gBIW5TjNknaxnK8JYghcdA6EzEfU=
X-Received: by 2002:a05:6870:631a:b0:d1:7d97:806 with SMTP id
 s26-20020a056870631a00b000d17d970806mr278296oao.8.1644977445823; Tue, 15 Feb
 2022 18:10:45 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 15 Feb 2022 18:10:45 -0800
MIME-Version: 1.0
In-Reply-To: <f1b4b389-12f9-7c21-b117-f2fe6df58a89@linaro.org>
References: <1644952755-15527-1-git-send-email-quic_c_sanm@quicinc.com>
 <1644952755-15527-2-git-send-email-quic_c_sanm@quicinc.com>
 <f1b4b389-12f9-7c21-b117-f2fe6df58a89@linaro.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Tue, 15 Feb 2022 18:10:45 -0800
Message-ID: <CAE-0n52G6Cu8douv_KuQEeVM-3vnwGT4dhai8kmiLJ4Fd9Qz8A@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,usb-snps-femto-v2: Add phy
 override params bindings
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Doug Anderson <dianders@chromium.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Matthias Kaehlcke <mka@chromium.org>, 
 Rob Herring <robh+dt@kernel.org>, Sandeep Maheswaram <quic_c_sanm@quicinc.com>,
 Vinod Koul <vkoul@kernel.org>, Wesley Cheng <wcheng@codeaurora.org>
Cc: evicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-usb@vger.kernel.org, quic_pkondeti@quicinc.com, 
 quic_ppratap@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_181047_678635_97B1F73D 
X-CRM114-Status: UNSURE (   7.82  )
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

Quoting Dmitry Baryshkov (2022-02-15 11:55:18)
> On 15/02/2022 22:19, Sandeep Maheswaram wrote:
> > Add support for overriding SNPS phy tuning parameters in device tree
> > bindings.
>
> This does not really benefit the users and does not help developers.
> Could you please change the dt bindings to specify values for
> thresholds, durations, impedance, etc. The values should be represented
> in the human units (e.g. us, Ohms, mV), not in the internal register
> 'bits' representation.

+1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
