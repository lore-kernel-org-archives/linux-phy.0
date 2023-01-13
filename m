Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55342C54EBD
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jan 2023 18:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TsONMOmPgycvfbwUhigSLjlTbusZXXE1zYsq7/1aGkE=; b=mBnxHhwWFFprlG
	+/wvki2lphGphUh6k2/bvM/M1fSLcynrKJu12wqEcbt0ZtvYNfBPO8lhielsfqdUhe+CLomLfp+8i
	9lpdvIAEa+kIFM4ZnqZTWZ7f2ylUUcJPMLZtksZlxoHQPc9b4zn+Hj8vjBR477JX0fDJOhCnPWnhQ
	YU1WU8VtBXHyOIagmXgJmAPOXA25EcY8fHaTXo6q4PweBGdF4lVkRkvXX8C+NxYmj1FQERW91G4j3
	ysfAB6rkm4LeMT8YXPMLBg1Y+Bo3NCBpor9VPUKHKPb6BIZ7BBliTu6zOJM1c2K08KBXFQ6b/ehGO
	/6+U75QnJirbf1NuuoKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGOdZ-0041kc-Pq; Fri, 13 Jan 2023 18:18:45 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGOdW-0041j0-Ej
	for linux-phy@lists.infradead.org; Fri, 13 Jan 2023 18:18:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B5B31622C7;
	Fri, 13 Jan 2023 18:18:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D3A2C433D2;
	Fri, 13 Jan 2023 18:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673633921;
	bh=mKUT5+shFUmJtqhjiyzj9el6WptuGyz/rzSRZcDxRls=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rPrDS671h4NTjpuPfwK23nsvE2kHsEPNYRm/aI/JQHZjVJ6GDqp8WHhHjX4Esr3Uv
	 2gV6DKeK8M5f5/JV9PVQ205kbFS6kCqMnlabNLOCKYJagQAkD9+Edz0nNrIruespo1
	 hdOpSga+mLw1FohprG34N9B4QldVIOdFFOdm32SEDBSmZtmHt28EBrK+wQFI371BP8
	 uic4RKsZJoepTyvWCxhfhn1YCG1+SNqnoYEl6rtMpGyHIKG0xTMf/eVQj4A6PAszFf
	 iTZ9oPKA38ea+rXvezVEbuZgat+XdWh32oZe/NHuuulk5diNJyY17CZ4ivW6Do1FG5
	 k24D8TKGWIDzg==
Date: Fri, 13 Jan 2023 23:48:36 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,sc7180-qmp-usb3-dp-phy:
 correct SC7280 compatibles
Message-ID: <Y8GgfJj0/AfpuWe7@matsya>
References: <20221225115944.55425-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221225115944.55425-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_101842_549686_13FE8CBB 
X-CRM114-Status: UNSURE (   6.89  )
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

On 25-12-22, 12:59, Krzysztof Kozlowski wrote:
> USB3 DP PHY on SC7280 is used with SM8250 fallback:
> 
>   sc7280-herobrine-evoker.dtb: phy-wrapper@88e9000: compatible: ['qcom,sc7280-qmp-usb3-dp-phy', 'qcom,sm8250-qmp-usb3-dp-phy'] is too long

Applied all, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
