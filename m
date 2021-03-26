Return-Path: <SRS0=WJYd=IY=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FC4AC433C1
	for <linux-phy@archiver.kernel.org>; Fri, 26 Mar 2021 00:22:51 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 161F1619F8
	for <linux-phy@archiver.kernel.org>; Fri, 26 Mar 2021 00:22:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 161F1619F8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W7L/OoJLiDNsD0mBUIUpJKwENZnnzQ0oCOWDbI3cnN0=; b=fq+QOO1dBCtc4rE/YkoDcWsDb
	Lwqmjhj9IrjbhCp1FJgq09u7Khd66x6OmZjq/yZ9apR2HGnulLJitnBihmM2DAUA8arHTWHgrCYyE
	0PnZu+gUi668Wao6GE+iDNKs4hWKgZMJM1gmS6dkCpuccZi/PKGdHsSLGVOgRhJc2QIlEN1D/5ir0
	BKeQ2Un/8ZpJxVqaYjvwBF4KFzBeS6v9dXg5jXuXr7MXOszhb/5N/RRSFu8dyW6vmxbJQgBA8VoVW
	u/2hOh0Ook+FJ3fsJK1YXunBXg0ylSEbHtxpq68ZutlLbNhUzuSZ0fHmcspOtVn/D8GL1gK57TnPJ
	Nq4CYORag==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPaFV-002PtV-5U; Fri, 26 Mar 2021 00:22:49 +0000
Received: from mail-io1-f54.google.com ([209.85.166.54])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPaFR-002PtD-UZ
 for linux-phy@lists.infradead.org; Fri, 26 Mar 2021 00:22:48 +0000
Received: by mail-io1-f54.google.com with SMTP id k8so3702238iop.12
 for <linux-phy@lists.infradead.org>; Thu, 25 Mar 2021 17:22:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/Z9y5tszJooFvK4t9UwKKq6ZF4ZawJui8BA9xur9v4E=;
 b=okLJq7EFuHWXL9NQlqL6gyOjZrYOKWbnygBsokY0AkWn+7jkWPXC3KUZveMu7FLlKR
 Pqy4dlIwKxCSHPh1cFxmi2nwsfSYo1TVVCz0igQByktNC/DdGee1mTh0zcZaC1ErdaFl
 HT04U/17VffDhLPFN3d1bHt64r8wgYGaUw7RUqKjYiqbgyytP/0zgBp5MA233wT4mGjT
 YzCZm5/JM896ZEehxX7qu6W6alc57nwFP7TWmErE6kodhmLiFvHC+FegRI4UabDQVeSL
 hCsNJXOXpral1A/gt18iT0vpveir6RhHFpA7P2RjOJogIWk96oGcWGIR5fwr1/V9r1xy
 1Evg==
X-Gm-Message-State: AOAM533pfG8PDKqhuKfeM+Z6MuybapHIRatsHR7NNRp7ywUjBiWYm2ve
 WhG455UN8TZ810EvEk5JCA==
X-Google-Smtp-Source: ABdhPJwRixmNeNMk7cA7qKskUIITWXFr7CSBWCfKbeLHiTAOe7TUsklFN00KHczAUOfF6FEA3Aq7rg==
X-Received: by 2002:a5e:c908:: with SMTP id z8mr8427719iol.136.1616718163509; 
 Thu, 25 Mar 2021 17:22:43 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id o23sm3470287ioo.24.2021.03.25.17.22.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Mar 2021 17:22:42 -0700 (PDT)
Received: (nullmailer pid 2023409 invoked by uid 1000);
 Fri, 26 Mar 2021 00:22:39 -0000
Date: Thu, 25 Mar 2021 18:22:39 -0600
From: Rob Herring <robh@kernel.org>
To: Sandeep Maheswaram <sanm@codeaurora.org>
Cc: linux-phy@lists.infradead.org, Stephen Boyd <swboyd@chromium.org>,
 Vinod Koul <vkoul@kernel.org>, Doug Anderson <dianders@chromium.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 Manu Gautam <mgautam@codeaurora.org>, linux-usb@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Andy Gross <agross@kernel.org>, Wesley Cheng <wcheng@codeaurora.org>,
 Matthias Kaehlcke <mka@chromium.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-kernel@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 1/3] dt-bindings: usb: qcom,dwc3: Add bindings for SC7280
Message-ID: <20210326002239.GA2022866@robh.at.kernel.org>
References: <1615978901-4202-1-git-send-email-sanm@codeaurora.org>
 <1615978901-4202-2-git-send-email-sanm@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1615978901-4202-2-git-send-email-sanm@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210326_002246_488022_6044D1CE 
X-CRM114-Status: UNSURE (   9.27  )
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

On Wed, 17 Mar 2021 16:31:39 +0530, Sandeep Maheswaram wrote:
> Add the compatible string for sc7280 SoC from Qualcomm.
> 
> Signed-off-by: Sandeep Maheswaram <sanm@codeaurora.org>
> ---
>  Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
