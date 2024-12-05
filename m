Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A1A3E77170
	for <linux-phy@archiver.kernel.org>; Thu,  5 Dec 2024 09:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EYcbHl2Y/JsygOJuuHAP8nDe/IXVVAGs/Gu+2EUsIyY=; b=wtjyG6goNL5yUn
	QjFLgg6/7Mzl3OCgWRBJ1WaBkS7OfPixJp7mgETgFxoLZxZLXg9zY4mJH025+dpV1JoxV8nyYWEG7
	rHoUVUTB5rNimo35q/lCemlBR6ZwBOQfqNQX3we4b0NrcbeVBghflHNeZiFGn4Jh0rgH9hp5jEvxM
	wqa3nIu8vpYVdyCA9Dcmyc/0Pa8JS4duKhGyS6pS5IuNOXrUH0M+P5Tk3nHA1OUmWxyW69m8s8oHK
	GqqVNbq9UMJzK2py3pGMl18npUxfyjRvUNwG6P3jf7uPQUy1zrF5f+hPHApwY4RHA2Ak3t89VBhX/
	kqd9xXRPZC9EiJ4eOdVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ8Lx-0000000FOcn-3P9B;
	Thu, 05 Dec 2024 09:40:57 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ8Lv-0000000FOc3-2UCj
	for linux-phy@lists.infradead.org;
	Thu, 05 Dec 2024 09:40:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id CE521A41D95;
	Thu,  5 Dec 2024 09:39:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 031DCC4CED6;
	Thu,  5 Dec 2024 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733391654;
	bh=5ROpg4tyy9Zr0FNDj5tkTa7O3Ob1JCqoHg4b4OHAoKw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HEywny6vCtZ6O1yZ4OB5Q4IVM5/WAOz7K5EkjdMhzMQx+gojGyCEgks+w+tYxQ9K4
	 1q4JfnW//05XU3N+gYiYckdpxisa96txECEuQXgA96a55lv0QEyqdeZrE3eHui/Rbl
	 Zv0SfxxayRKEcjKS/C+wMK8GKNMTxf6TIgZHI/8W1XdfkDw05DQjfFO5t+lzZhYVNU
	 t8inZMOZDP1wzkY75Lxv0b4rCQi6x4vMcPkKiLKNQdvksZx7yTMwoQ0Zj5S8Tx40BF
	 amJMJX/YA/RiTQaeAAgtALig+wDHF2EoZ+7Sh6hKYOT9Y5tKt/XpBHsi0ZEcb64OUs
	 fWse9Xj0hNSog==
Date: Thu, 5 Dec 2024 10:40:52 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org, 
	robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	p.zabel@pengutronix.de, quic_nsekar@quicinc.com, dmitry.baryshkov@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	Praveenkumar I <quic_ipkumar@quicinc.com>
Subject: Re: [PATCH v2 3/6] dt-bindings: PCI: qcom: Add IPQ5332 SoC
Message-ID: <zgu3ygylkuayheq5lampite7dpli2sxsbgaa2cgwcshmm2sax4@6uprsoldacof>
References: <20241204113329.3195627-1-quic_varada@quicinc.com>
 <20241204113329.3195627-4-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241204113329.3195627-4-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_014055_691651_070A1AC4 
X-CRM114-Status: GOOD (  13.55  )
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

On Wed, Dec 04, 2024 at 05:03:26PM +0530, Varadarajan Narayanan wrote:
> From: Praveenkumar I <quic_ipkumar@quicinc.com>
> 
> Add support for the PCIe controller on the Qualcomm
> IPQ5332 SoC to the bindings.
> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v2: Use ipq9574 clock & reset details instead of a new one for ipq5332
> ---
>  Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> index bd87f6b49d68..a7c5d0ce7de8 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> @@ -21,6 +21,7 @@ properties:
>            - qcom,pcie-apq8064
>            - qcom,pcie-apq8084
>            - qcom,pcie-ipq4019
> +          - qcom,pcie-ipq5332

Looks like qcom,pcie-ipq6018 to me. Don't grow ID table in your driver
needlessly, but use proper fallbacks.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
