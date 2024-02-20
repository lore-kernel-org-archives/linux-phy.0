Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AB94C48BC3
	for <linux-phy@archiver.kernel.org>; Tue, 20 Feb 2024 12:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HA58GEvWkLEjRdGX6vyocyPW4+3XIkhciA6bqkkJ5NY=; b=r396jIQtuBOSyD
	PYQyh28o4h11e4wxv+E4hcjb97UUHz30B1q0tbl5I21AmR6BQXYj1IgQFxg+kIwypqk9Nq3RvLaPn
	342p5HLcdNxaLoJvq+0hegk99lZIAUrrD0L8FrGJ1OSVAGvIK/plvS0Wo19y9UBrYgC9Z6ISC7xQ1
	i8L1SgmY1SruMIDwrSSVZ07B1bulqAhX9Q+rLYaErkXyDSlgzGimXvuX32BpXxkE6Ena+yRR17OXY
	nkOo0cyBs3JfIYJyRd2GBOyvDxYAoygmmBHfzBMpLhMRTX+crdHtgIxI/kGwioDtYQyuEMRQh4LFO
	40yHsi+H66EgBsj5uuBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcOxu-0000000Ec3W-3ZK2;
	Tue, 20 Feb 2024 12:11:14 +0000
Received: from mail-yw1-x112c.google.com ([2607:f8b0:4864:20::112c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcOxs-0000000Ec31-1Uf8
	for linux-phy@lists.infradead.org;
	Tue, 20 Feb 2024 12:11:13 +0000
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-607fc3e69adso42872347b3.0
        for <linux-phy@lists.infradead.org>; Tue, 20 Feb 2024 04:11:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708431071; x=1709035871; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dy/caDfZjOGZ/ICXi5t2Xv/6rJdHheSidVH0lV0pHS0=;
        b=Lru7rr86C3DCESpUPvbD1Iics0WA7/MRCL6JLCRl7ZB3zjW4UZxcjp+aX5B8G2q3uE
         3y3GXQ93gbuFkvme4feGuKvDbp+cwtf+xJANbO12vA/IFzxvu+Iro4XeAJH2sT68BBAs
         x9v8EG5WddVansJnda2omD2ii3lDXRm3ADNq/dqk2s6/OJdNLNnlpSgHMpOQ7ZxgmGlK
         jFedwwKKzH8m+FDr9/d/JC1o9Zmm0xK+hQGe5LIWM59YfU545ExqrhQ9Mgp40Jh0lLY7
         5jox/MtQzLhlwt7JHA1+yjWEbIVJdQECx94GLzEPL2nIrlYvrOsmKtYfdJG09j7pQZks
         JEww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708431071; x=1709035871;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dy/caDfZjOGZ/ICXi5t2Xv/6rJdHheSidVH0lV0pHS0=;
        b=JoM+GXlW0xou/Cc8AKX/kDyL3gVpwQetO4MIL9aj3olDMBrrJ21y9XMBaTXC86l1V5
         RL5FS5s4bovdfD7rIfjOXHobbF4Z+NBLe1nvMNJl0hvyL0lfmaRsOXMLaVIevFSXF8sn
         fiB1QOfPiUCwrQMiK8VTMhAhcwj+zhJejYfUyHWSNG+WS9EQXO/dJ7Wshzq06Kz5F3AS
         QCS42ibDmfVhOtkSHxNhVCSXjLsvC+8soY50cSI0udByX7ITO4sL/JObnDOfTEE12ohu
         abKizJuMReorkw8V88WbExPEqrT3Cru9sJJkRLGvJAwlMyD/Mb01D6zoHXrPoHlDIFRS
         99lg==
X-Forwarded-Encrypted: i=1; AJvYcCUidePzjSRPvhJl1ykBUE6TbaSO4ZyZ6pHy49vUt51g/3g2TFhZkB3QqMeHlNrHWeAg7gFhkRF6kmmkQhW0v3c4iZ7cdShHmHETfuMSXA==
X-Gm-Message-State: AOJu0Yy3fjIQh3KV80GMLAcxTXHaIzCWYTELxgYADH97eP/7CHjJQ7YF
	vB6Dr8XhGh774rP8ShbwfGPaSFp8XETcSvWmdIVQ3sKX//W8os2LJMTHBNMMvqvaAHUdcnaOAxa
	HgIGso3uSDZND9b2A+XuJ4Mapmin4cStibRXiSQ==
X-Google-Smtp-Source: AGHT+IF2zDf3XgcK9QP2IYaoigNbZzdQSINGOcFBC2jSQR7qeBk1CasXZT2gneoj3MATMAClXBgLcHMA0tFxwFBaxmU=
X-Received: by 2002:a05:6902:2709:b0:dcc:f8e5:c8c8 with SMTP id
 dz9-20020a056902270900b00dccf8e5c8c8mr16849736ybb.45.1708431071014; Tue, 20
 Feb 2024 04:11:11 -0800 (PST)
MIME-Version: 1.0
References: <20240220-x1e80100-phy-edp-compatible-refactor-v5-0-e8658adf5461@linaro.org>
 <20240220-x1e80100-phy-edp-compatible-refactor-v5-1-e8658adf5461@linaro.org>
In-Reply-To: <20240220-x1e80100-phy-edp-compatible-refactor-v5-1-e8658adf5461@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 20 Feb 2024 14:11:00 +0200
Message-ID: <CAA8EJpp20nq4X_n0Bp1ZmZ7yffWm1zYpH12QL-Gj_nP7wuq1Hg@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] phy: Add Embedded DisplayPort and DisplayPort submodes
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Hovold <johan@kernel.org>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_041112_429692_ADEC4847 
X-CRM114-Status: UNSURE (   9.08  )
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

On Tue, 20 Feb 2024 at 13:58, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> In some cases, a DP PHY needs to be configured to work in eDP mode.
> So add submodes for both DP and eDP so they can be used by the
> controllers for specifying the mode the PHY should be configured in.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
