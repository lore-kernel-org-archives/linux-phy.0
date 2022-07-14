Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D9B6C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 09:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xj75lvwFXmYO/5LBIftaCSsNNraDVCkgulL6iATnNzU=; b=3cvxpzdmntOyzy
	+QSTz1DYw05f+P41CynhGJAL9HevG4+9wVIkJSRe+/7BJsKOhPQ+dsFIpuGgJFY7xvpfrHWIEJZ2g
	0VnRgLL4E0nWg3TzUSCkoVVrYGd/3ofOD6vczb5shklIT2XYiemQYvto33wBbPvMcAc2FKkgXQ854
	nPv0PoYV8PgN5Szn138UQhIMZ1OXZUOwNh5tLKtvYTlqHGHLbp5+crPC4EQb3i/hd7W42ZV5Vw3eo
	XyIcRbCyDi2qQdgl4tQhfJi61qEEdYPeKU6NriUorXMBX1IajQbdplCnXhebs7XpjG4nfuMnzHVXL
	FN/fVhes3GTVtgmwXU1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBuzi-00CkVR-Kt; Thu, 14 Jul 2022 09:18:50 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBuzd-00CkS1-Kh
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 09:18:49 +0000
Received: by mail-lj1-x22f.google.com with SMTP id r9so1423733ljp.9
        for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 02:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=LkQDka+7xKVd9l5ecpBsG6iJaAg1D41qV0vmGVmqEew=;
        b=v5QwifoM/ZvLuBEgTdCQOfCZIyen+RgJhsF6EV5X65WmcD26A3EOmTZOjpqNqVHbkS
         mqvfGcpYtWykwOtkSNyXK8quyEkbV2OjFTZOVDBehqrnB3vX+PBYyDfyuTu0EcBJDp8U
         jg6LN1e5sqTebvJCPvGCp8m+ccEPEMuAw3UnRmZmun61hrdZvcfdMkdxQrcVE1GzqJpV
         qe3ae2yLrDmBkL4TO+iocqe6UYZlvMf9n11U6ewEV8t9+6/H/8vaouWXcgCA65yFfMMV
         QcBQcSEQlCKM5UBUiiavbRfXETLO/CE4uPFXNZX+6r1Uq+djr47daETzUoy5sFPjDrUw
         RAhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=LkQDka+7xKVd9l5ecpBsG6iJaAg1D41qV0vmGVmqEew=;
        b=5GdxAGoZSGQGTPFpmGN/31CcAKTDoUZLgCT/ef3rPeEGm2LqAbI60RsDWYmByY+1k9
         Nq3MH+nXs8Xrnre36w4bpUkOzIT2mOtaDeYT9hyR8oxXcKR07D7KGzYZvdX5POfwEzDX
         Iv54h4g6l5ZIzQ1tc6ZLgCdI1qUB6GzVHqPc5yh+v3wlgSkK7x8sXBVKUqz+jDOmBJLu
         9+8OvUtrTU5nQEYQOtMK5dY+hr+/ow06QRzTU2EIDb9MI+QzrUXRE2NCGqUqJw4/1O5O
         nakzuY4o2aFTKXoWmmwdAfx/JWaEdhujOnX1mQy0Wf5uzAT0Bhx98UL7kxjWlLb/uurm
         V1sg==
X-Gm-Message-State: AJIora+V8cCVSAeHNFUgUq0uON2/t3NjlDzVMnEXckS+RqAEuwBMf0uT
	ymN6jabKGJQm5ZYtgyTM6LfE3w==
X-Google-Smtp-Source: AGRyM1snG6Q2bBq7P+9Uq1W6p4VAnBAjqQoJ0rx5GwP6PFiI9RjxLBnzJN7tk6F0ueYTGmmcQUOcvQ==
X-Received: by 2002:a2e:bd0e:0:b0:25a:88b3:9af6 with SMTP id n14-20020a2ebd0e000000b0025a88b39af6mr4089474ljq.363.1657790322792;
        Thu, 14 Jul 2022 02:18:42 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id z6-20020a195046000000b0047f59336d6asm254738lfj.179.2022.07.14.02.18.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:18:42 -0700 (PDT)
Message-ID: <0705fdd2-c7e6-c810-5154-d3c7a6fc62bd@linaro.org>
Date: Thu, 14 Jul 2022 11:18:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 14/30] dt-bindings: phy: qcom,qmp-pcie: deprecate PIPE
 clock name
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <20220707134725.3512-15-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-15-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_021845_708039_DDD2BC8C 
X-CRM114-Status: UNSURE (   6.70  )
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

On 07/07/2022 15:47, Johan Hovold wrote:
> Deprecate the PHY node 'clock-names' property which specified that the
> PIPE clock name should have a bogus "lane" suffix.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
