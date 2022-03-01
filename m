Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFEDAC433FE
	for <linux-phy@archiver.kernel.org>; Tue,  1 Mar 2022 04:07:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q3kT2LKo1iYmGRgTWLqBcifFbZiL+4rMkll433RZN4Q=; b=CQIoZjauxCqlen
	eTML6f9BulISpuy32jnHouFiAdf4l5Y1yBf+XWKoWRfGOINRT8QUwxQIIUpINsNICabAkii9hxEpR
	rrROex+oDwKoMZg63aSzvSP9bY22fjGsLznGeLfbtwsACrzbf9gmQjKI5tpg6vRvyu9OC/jatHwBr
	T03GWVQb5/zTB6Z2V1zsWN9X0czeXUJnRXly6beUhjtefuRwCOqKh37YIWGQ6DMIvHjL8JHvdnf7x
	605qbv2Fz5wuQSJn++axGpW5wbXF66aGmGubHkw5msFU6L0DS2sE80nH0pTRQnGk+95tUx29f2uFM
	vHzAcn+9Y0bl+REWCcWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOtnE-00EpmJ-5f; Tue, 01 Mar 2022 04:07:20 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOtnA-00Eplh-SB
 for linux-phy@lists.infradead.org; Tue, 01 Mar 2022 04:07:18 +0000
Received: by mail-pj1-x1035.google.com with SMTP id
 ge19-20020a17090b0e1300b001bcca16e2e7so1001298pjb.3
 for <linux-phy@lists.infradead.org>; Mon, 28 Feb 2022 20:07:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=DaUtZIJE57Vq9SZxZBhHAxebl5xJ9yYYEaN9hQal+Yc=;
 b=zkOAS1NuNVVA37+a+9a5ZOpokz2S8PWO35PvVGMMThDauaYUOPsvyVjtc8Zr41iFQi
 evBontnp0ibEks/7mYoY/YuqsCVhfpUaez7NR3mQ0Sa4AfaUz3NIZ7rvzqT9zXMSljSt
 jicjvB603m34d1Vm7FPVEsF93+5HqkdpbTJlR8aaCL3RSFn22ck2ctV0flqmUD8K22aX
 rBn1xW1ZmBx4pBckCgQoMMVFxwuuIu4PoBfFW1nuuS6InmoX/5JQDMz3HQ8pbqIOzO/o
 WBivj9pQFfdMjgHIT5CIYTmXNNtOvZ+OWI1ZbDsQbvnZOWTjZM6+zR9aSqlKeFTtKg89
 hDig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DaUtZIJE57Vq9SZxZBhHAxebl5xJ9yYYEaN9hQal+Yc=;
 b=qhlHc5YJ6SoeOSs5k4Vb0LtDX8vww3AJItn7qhSjaA0Oh1UVh60s54HdNCtTThDJLf
 CrYNXXME7kQriEYLj5qrgWgucDF0pJKRylS0Ik1u1Q4v62FYo6ozjckFG6OgT/wtmYCY
 Q17OXvT/f9JabGPvCPzVFwyiEvwDqaygLuPgYESsMGnZL0woWRCMLuXCutL0OKvvgo30
 1U8OOENw9de2sC54VgGhqdFWXQNx720ouH47tnBgqQ4H8Vra4phjOxAf9pM0OLlsk++P
 pY0WCb4DHu4qY59uWvfEQRNiv34GzOVDapB45K3UEehj7SZaR5dTNShTpGVsnuLAgU9Y
 9BZg==
X-Gm-Message-State: AOAM533fNtQqMbsOBtHlhwfPADPQEI/AMzxtSF5fYsEg93cr0QQcE/h5
 zDgKJ/IwczUuGrakZ7MC8rgj8g==
X-Google-Smtp-Source: ABdhPJzWqb7Tsc9wjdCtlNdc3HRUiLy0CedyQh9cebhriMji18nhdC0SewddXyCwWxQiEaQ3kO+ocg==
X-Received: by 2002:a17:903:2448:b0:151:8173:abf5 with SMTP id
 l8-20020a170903244800b001518173abf5mr1730249pls.55.1646107636043; 
 Mon, 28 Feb 2022 20:07:16 -0800 (PST)
Received: from dragon (80.251.214.228.16clouds.com. [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id
 a32-20020a631a20000000b003756899829csm11509153pga.58.2022.02.28.20.07.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 20:07:15 -0800 (PST)
Date: Tue, 1 Mar 2022 12:07:09 +0800
From: Shawn Guo <shawn.guo@linaro.org>
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, bhupesh.linux@gmail.com,
 agross@kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, vkoul@kernel.org,
 linux-phy@lists.infradead.org, robh+dt@kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 7/8] dt-bindings: phy: qcom, qmp: Describe phy@ subnode
 properly
Message-ID: <20220301040709.GF269879@dragon>
References: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
 <20220228123019.382037-8-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220228123019.382037-8-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_200716_987791_D7784DE0 
X-CRM114-Status: GOOD (  13.98  )
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

On Mon, Feb 28, 2022 at 06:00:18PM +0530, Bhupesh Sharma wrote:
> Currently the qcom,qmp-phy dt-binding doesn't describe
> the 'reg' and '#phy-cells' properties for the phy@ subnode.
> 
> Fix the same.
> 
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> index 70e7cd75e173..f8a43acd229a 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> @@ -115,6 +115,13 @@ patternProperties:
>        Each device node of QMP phy is required to have as many child nodes as
>        the number of lanes the PHY has.
>      properties:
> +      reg:
> +        minItems: 1
> +        maxItems: 6
> +
> +      "#phy-cells":
> +        const: 0
> +
>        "#clock-cells":
>          enum: [ 0, 1, 2 ]

While you are at it, what about these properties?

	clocks = <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
	clock-names = "pipe0";
	clock-output-names = "usb3_phy_pipe_clk_src";

Shawn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
