Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B008AC25B47
	for <linux-phy@archiver.kernel.org>; Wed, 25 Oct 2023 08:54:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6iWroW8TI2W0b7kGyjOcOifavthQzBgzQIC6Iuav5Gg=; b=b6kOVVVNd9ys2l
	vZuQYKlaTrjNvEi7m7k2iijJgbqu2CoFjPPxSyXh6o8UShkHi+IJyWutlmNr62FpS/itHxHArxGIl
	Iw+NsXSZeOWcOj1Y20N1xQH6OKvsruzxKyt6vqh8kVKeoq3TfAXJn5gNOB1hj4lPmQkRaHK7iiJ58
	Y9oHOGws+KMeWBodsRtukIgGW+thW3q2WWTM0doM9ofRIz4W16ryHELzXXjFynJlk6v0XnJjIaOc9
	gJy2cZU9yQB79o3uzRh54LXi42ryaniYrFKQwTsGu1LJ+vGkAslTosSpRf8pWX9CAb0Eak0/F9fXx
	d5NzH1gvuX/61kuSyF9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvZei-00Bl7D-12;
	Wed, 25 Oct 2023 08:54:24 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvZef-00Bl5g-38
	for linux-phy@lists.infradead.org;
	Wed, 25 Oct 2023 08:54:23 +0000
Received: by mail-yb1-xb33.google.com with SMTP id 3f1490d57ef6-d9b9adaf291so4270082276.1
        for <linux-phy@lists.infradead.org>; Wed, 25 Oct 2023 01:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698224044; x=1698828844; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=05z2jDJBCkJUaY0qwN312UAtjh1v85RzfJBH/QDD2yE=;
        b=izVCvDAZd+2C0OcVLFNq1h/tpD5ZbGQMoifAxDSYmmIoIZDSFRlYJxeroBHec8Mlby
         50amRph4Y2cx3xji8J2recYd1tOvrPfgQI6f2H+EaxHMNJNufvltPnW7D4I4ERTccM6K
         78RXcat0HQ3B0YDR87eeVcJQf1QIxT/CoZKZlYS/EKw8q3VFJpj40GjMfFbIRsPFpEIK
         PWI6iEDHv0h8e0GxVfbVdM2zH2YzdSf4RQi16/qYOIRo4bAgOHOd6EJO0ca7oP3n+90C
         G9ASpGSKuban4eTNF2wpB4slzK/zC0XzpaUIeiK0f5P5V/CkmPuImvo84EofvvnEY3am
         WjYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698224044; x=1698828844;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=05z2jDJBCkJUaY0qwN312UAtjh1v85RzfJBH/QDD2yE=;
        b=Ec1jmE2kfAY8gj6k2zfpmHNpebbTURapKwybuVATNcoUl16R4FEA/ZZWTSW5dxWhE2
         XWO1alhUMnybpItC4GFGKLymQyaCB1RuiUa5XBCVS7OmILog5JdPe1ofNXPyFZBj4UuI
         KBhZuKB1iG5Ln0pJ6RiekTV1bQ5tX636wvIk8DqzGoOSkfB9kz3mDJmV8TaFpMaTX3jM
         n0drWqXZfO/UWB/8QlR9BJ5TYKiFuOfrnwS6TvP1b3mH5jBt7vfKqOZY6nYI2b53UszY
         vwYf5LLh8XIEYX5uPUJU0WUe/aAf+CNl/PbUmHe06Amu09i6/RzOMYoHqbiScFDLZiqG
         co6Q==
X-Gm-Message-State: AOJu0Yxc+B37SrV38ZjHV493toI4P89d6qgsAJKZzWqXFReWiT2VBqUq
	9twbsk2b9KWHlJkoxD2FRrd4O++JrNWi8b4sG8Mtow==
X-Google-Smtp-Source: AGHT+IEv8Y1RRki8dQdUkHfMqNiOSNJD2LSTon4K+5zL/p6SyF33Vqj3k2iU08uur8/zm9Esfw/JJA3puyUMAXz9YYQ=
X-Received: by 2002:a5b:74a:0:b0:da0:4dfc:57d5 with SMTP id
 s10-20020a5b074a000000b00da04dfc57d5mr3141457ybq.9.1698224043799; Wed, 25 Oct
 2023 01:54:03 -0700 (PDT)
MIME-Version: 1.0
References: <20231025-topic-sm8650-upstream-phy-v1-0-6137101520c4@linaro.org> <20231025-topic-sm8650-upstream-phy-v1-6-6137101520c4@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-phy-v1-6-6137101520c4@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 25 Oct 2023 11:53:52 +0300
Message-ID: <CAA8EJpotBF5xP2UC307nQpXUfvmiH8iK729KBXsPUrf5b8rQBw@mail.gmail.com>
Subject: Re: [PATCH 6/7] phy: qcom: qmp-pcie: add QMP PCIe PHY tables for SM8650
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_015422_011911_6C302AAA 
X-CRM114-Status: UNSURE (   7.84  )
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

On Wed, 25 Oct 2023 at 10:45, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> Add QMP PCIe PHY support for the SM8650 platform.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 65 ++++++++++++++++++++++++++++++++
>  1 file changed, 65 insertions(+)


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
