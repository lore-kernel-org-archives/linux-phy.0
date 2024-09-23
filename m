Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 123B0CF9C69
	for <linux-phy@archiver.kernel.org>; Mon, 23 Sep 2024 13:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ek8w85mXojsMAsm7PqLwEYbcnRQSmaqCq1hYV2E0e00=; b=DTxpTv0BbSRQZR
	cpsf+ofVU3wBGDA1k46FaN23hqAtJlnsoH5DIM3RdYmtSLi2qfIsowWYeclT05rc/FPZP+w66O1PO
	NCKhbRP+G1sRBgGOBDYLXgPmPcXmqWc9JCbW5kcqs6Go2HOMxe4R/ZebX8YvFjqJR34HR8wlKpRFe
	b6G/1CgW5hGd7QoW8Vh9oG10DGRRjD4eh9Hsu+jxO6LbhWWvO+AeL9p/7mySt/l5NVJ8q5ueIrBuc
	gCLdxeyQaALF1Rq4mKtPMObOKBODZ4rquzh9BwDQIIfxcPzyvbYLI9csZsiiPT5sN4J31XiUWM22a
	Eqimel9IaI/JdUjIt1pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ssiyd-0000000HGIH-3Irt;
	Mon, 23 Sep 2024 13:19:43 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ssiya-0000000HGHk-2fcV
	for linux-phy@lists.infradead.org;
	Mon, 23 Sep 2024 13:19:42 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-53568ffc525so4910629e87.0
        for <linux-phy@lists.infradead.org>; Mon, 23 Sep 2024 06:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727097578; x=1727702378; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kGk2orlX+fi9SeSwRZwCGAgpSwWImCEuGfUk0feNgoc=;
        b=CWa4JoNAi0ZWr4XE5lQbGsiP5VXx+g0ilOVo0stDRZKlaIRYFpxxuklz80bzRDsRxm
         b1ezWg9nKctyXqiFbVfGKjfqHfO6PKl3gNhjcVJcxNR0/YI7ZdNXniyXYlyKFG79Xe/0
         5cC7qPhBi9L+9yK7O+hUpfDM/D/Ihy7hVKDT3W47M0kqG+LtCWKn4K0dUZjVDj+NnW+d
         S/p5rqLt+j5vIF/3DLnT900hB9rDAbMy6+VZ2Is86tBhfyqSWQUy/K559Ol/pFZnYQ7A
         9GjIP2rc0gEf+iLTxv8OxSSayZeRE9dBiuL6Ou84/eDZnQq+jRzW17rgGsqu49u+RePi
         kxqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727097578; x=1727702378;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kGk2orlX+fi9SeSwRZwCGAgpSwWImCEuGfUk0feNgoc=;
        b=pEQatn9wBuEjgLV1mYS41TK+Ij+4aUe3esdSCrTYRoAX8akmflh+WkvGzUKm6efjEO
         kWF5f8XRFluGnH+nuLwcTcxCax9DQE36AW+WJnUP7vA/ulsSHlgmOw6vXnmnEUdRxXxZ
         yVJgugNi/6rjevqISdHvmPlBY7LgkapGWYuzn2RcMgQ8TJcm8zhd0gfnQLfgj4uz8cF5
         +4U6PyL5wPRvlFeo9LaWUVjB/fDLQrVWYbR/AJ+dOGku8wTY/vVROjjkV1Rpdnan+WgH
         I0rvqMcje7tV/53Uv473wFWfSipb6Muvdjd/1JlrbV75ZfPexY2oQhChA8TXlebGfXt0
         /Jdg==
X-Forwarded-Encrypted: i=1; AJvYcCUhIevLnheFN3h9F5QAkn6evYeQxbAnBJmLo6YUTE0t76ZbCZ7UNPJdWuFpBJg+4fphvVk8t5CXccU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzjK3vAQ8D5oy5wYyq+iNa4xXFDxRMVMmeCY1ItisvhfoUbCyRe
	MnDd3fx/jDT6B763NfC2Ga6JQDfkCq2M4YDUFz3lL/wez+SKXpjhTeaO34TF/lg=
X-Google-Smtp-Source: AGHT+IGOBZJQI5jNN3s4SzM7Ap+2SyMdJN1H7lWTNYEIrJ6+UEojqKqP8ntoAuCXELz9jje36RoeLw==
X-Received: by 2002:a05:6512:1250:b0:536:7a88:616b with SMTP id 2adb3069b0e04-536ac2f462cmr5710269e87.26.1727097578302;
        Mon, 23 Sep 2024 06:19:38 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-536870b4108sm3276674e87.244.2024.09.23.06.19.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Sep 2024 06:19:37 -0700 (PDT)
Date: Mon, 23 Sep 2024 16:19:35 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org, 
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, abel.vesa@linaro.org, 
	quic_msarkar@quicinc.com, quic_devipriy@quicinc.com, kw@linux.com, lpieralisi@kernel.org, 
	neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v3 2/6] dt-bindings: PCI: qcom: Add OPP table for X1E80100
Message-ID: <jz6eqbreus2hrhxadj643ibfy3ejr5tjhkerln6sh6bsvfhaw4@6uwpabq2d76a>
References: <20240923125713.3411487-1-quic_qianyu@quicinc.com>
 <20240923125713.3411487-3-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240923125713.3411487-3-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240923_061940_732553_CCF54F6F 
X-CRM114-Status: GOOD (  14.46  )
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

On Mon, Sep 23, 2024 at 05:57:09AM GMT, Qiang Yu wrote:
> Add OPP table so that PCIe is able to adjust power domain performance
> state and ICC peak bw according to PCIe gen speed and link width.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> ---
>  Documentation/devicetree/bindings/pci/qcom,pcie-common.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-common.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-common.yaml
> index 704c0f58eea5..3c6430fe9331 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-common.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-common.yaml
> @@ -78,6 +78,10 @@ properties:
>      description: GPIO controlled connection to WAKE# signal
>      maxItems: 1
>  
> +  operating-points-v2: true
> +  opp-table:
> +    type: object
> +
>  required:
>    - reg
>    - reg-names

Please drop it from qcom,pcie-sm8450.yaml, it's redundant now.

> -- 
> 2.34.1
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
