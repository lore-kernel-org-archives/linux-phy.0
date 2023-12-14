Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15C13C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 17:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/KMpRTY/ELqqKpCNl7QY0FwjfU02viHQ8rrijHJ2GsE=; b=kc3ceVjonRE0HV
	hjgkEsqR/TG11RXSgbCtXxgFbEwVbD6vYdcAespwFwlz/b6Pz8o0+tIyrDVgDnjFr4NdzUDpc2rQI
	ksiQU72rdiuprwNZNuShUDavo7tjfO7T/wGEEGfIH6MT2QH6lFVQZVrh1F/HifjNvrDuIvf4OQD9o
	nprPZ8Qf8j7+fJBqBKgBAn4ML7hlumPV3PpMYXt2yBGDLXQDRr9/S2Pl0I18xbz8Urd+idoujI0ul
	m4EKjclJhY21eR8qps3r8UeP98JSopjPDau0aehsxL6uO3c+rcUMuIc1jky8VHzi+W/ZuN4MG7zTP
	VkBbUFwQQfJuL6V4U7Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDpOM-000uVA-2Y;
	Thu, 14 Dec 2023 17:20:58 +0000
Received: from mail-oa1-f46.google.com ([209.85.160.46])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDpOK-000uTt-0y
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 17:20:57 +0000
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-20335dcebe3so1098315fac.0
        for <linux-phy@lists.infradead.org>; Thu, 14 Dec 2023 09:20:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702574453; x=1703179253;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5bRpMT8adyLjuk8v3m+Q7iMZxQW0r3mgWAJ3z5hKZNg=;
        b=Z0jVyKtACGuYFj3a5/h4q282upodvGrfAEatSJhvxsLNzhD0h4y2PI8bGj2KIcALif
         zlVNYunYrpWvprW1b9EiroKKE4gwTwjr3CTxOXd1/yCshtJVk3HZd9By08Ittxu8Biot
         cDrzgn/LmIUtgXfIMyimLsUX/ZduHRmZzBVuB5jbxojyYF2uoJ6zWjKPGB9cZUypj5rs
         O2mfsA6aKad9GlxZiYSL/yW93OSB7SwGwKcpD2Px3CB1ZR9ETL7PFmhjpNzH2evMdDaC
         XKruuDYFKqS4iikokbiDnQKgMVhWzoBFRBDRZkljuCf+iM/vbOR44bsbnLkw7N0aEZ91
         eGkA==
X-Gm-Message-State: AOJu0YzaVfCavm4BzsgxpqmcCxw2QsT+W4ZvxMXOtwU3R1DP0C5Jl4Nm
	7O+pa+SZaipBWc5kJV6/mQ==
X-Google-Smtp-Source: AGHT+IFG1H7d5qx/OPE9NFJC6FAAQwsK89rA2Zqb4ztseS1evSpGKvGvToAZ/lZKGdOpICFILPvMYg==
X-Received: by 2002:a05:6870:4209:b0:203:56f5:5a29 with SMTP id u9-20020a056870420900b0020356f55a29mr895478oac.16.1702574453615;
        Thu, 14 Dec 2023 09:20:53 -0800 (PST)
Received: from herring.priv ([2607:fb91:e6c7:a40:1c2d:b875:912d:c28])
        by smtp.gmail.com with ESMTPSA id so10-20020a056871818a00b001fb1f2c424fsm4597941oab.45.2023.12.14.09.20.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 09:20:53 -0800 (PST)
Received: (nullmailer pid 614807 invoked by uid 1000);
	Thu, 14 Dec 2023 17:20:51 -0000
Date: Thu, 14 Dec 2023 11:20:51 -0600
From: Rob Herring <robh@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org, sboyd@kernel.org, mturquette@baylibre.com, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 01/16] dt-bindings: phy: qmp-ufs: Fix PHY clocks
Message-ID: <20231214172051.GA611674-robh@kernel.org>
References: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
 <20231214091101.45713-2-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231214091101.45713-2-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_092056_342419_25F5E297 
X-CRM114-Status: UNSURE (   7.00  )
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

On Thu, Dec 14, 2023 at 02:40:46PM +0530, Manivannan Sadhasivam wrote:
> All QMP UFS PHYs except MSM8996 require 3 clocks:
> 
> * ref - 19.2MHz reference clock from RPMh
> * ref_aux - Auxiliary reference clock from GCC
> * qref - QREF clock from GCC or TCSR (since SM8550)
> 
> MSM8996 only requires 'ref' and 'qref' clocks. Hence, fix the binding to
> reflect the actual clock topology.

Breaking the ABI is okay because...? Please explain in the commit msg.

Rob


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
