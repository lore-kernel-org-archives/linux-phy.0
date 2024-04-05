Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEB5FCD11C2
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 16:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/4glk3/mdeEcxc4pNdAkcA2gdKXEV2s5u4g72ij2OaM=; b=rNLOPSSwRzXPYl
	oCc588wUYjDfy8kaYTAhuSzU+ouoOu0SSoE9L8hjui+2aL6rRxD1TwXVTO3F7W9XaX2B5FAeRDe8j
	/0o0PGOZZ7oPK1Omuz0i5c5oOb9ZZcY2vpGKRpFwPGLaSG/1TlRDpEBHvJmU33AJ8cQjWf8lJYQ5G
	crWAexI5y/x+nHTqms03tuQT8xKIgQVwVrwARxxxhbK2CSotys2QfGdF9g5lpMpNnFP7qmzYsx7xX
	EqFio8uuPx1GBQK4kwIITNmmUvltFnQlQybDJlvESfwJndFcztsCH/SYYgNVGf2M23m1PyF7HDD8X
	KYno+G9RXVWWBW8ZWygA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsmXn-000000081U0-17I1;
	Fri, 05 Apr 2024 16:35:59 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsmXi-000000081SR-3Zv6
	for linux-phy@lists.infradead.org;
	Fri, 05 Apr 2024 16:35:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 9FCB0CE245D;
	Fri,  5 Apr 2024 16:35:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DE45C433C7;
	Fri,  5 Apr 2024 16:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712334951;
	bh=oDN6wQ8VzoG9OW2mJZ7hpzN5TSjN0YJC9IxQ2U0tMHc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TcqVZ8o6kG0k/k91Y+FZDa/l8c53J7dkG7KmrWFQPW1cRubI3wNvHGC6oLeSEnVJB
	 fOhO5tOI7N4A+8Rs0Rt2sFEmuNplZb/qZquIVXPxi1y/u5VtS4SSDfwRulwCh9QRKx
	 EaARAq1VBxGRAyfhoatVQMys/DGZE3fHvoTP9/s+96M+69ujkLPiAWF2xdhFrM1YT+
	 1M1GkRzI8pBEBXMnyNww9WNuoXn0jVDv9dcl9/oHbwsoVfk89G2y+kWeW+j2fLmDCe
	 Ih0g84+ofUw5kuFC6uaXI4llLzi54ooxZwurdAYWbVJgnPVdZudCYWTq1tc84q/LX/
	 cusVl2ZEjKKPw==
Date: Fri, 5 Apr 2024 22:05:47 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Gabor Juhos <j4g8y7@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Sricharan Ramabadhran <quic_srichara@quicinc.com>,
	Varadarajan Narayanan <quic_varada@quicinc.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom: m31: match requested regulator name with dt
 schema
Message-ID: <ZhAoY4snnfkGv77B@matsya>
References: <20240220-phy-qcom-m31-regulator-fix-v1-1-7675b4a916b3@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240220-phy-qcom-m31-regulator-fix-v1-1-7675b4a916b3@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_093555_126526_44360135 
X-CRM114-Status: GOOD (  11.78  )
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

On 20-02-24, 20:13, Gabor Juhos wrote:
> According to the 'qcom,ipq5332-usb-hsphy.yaml' schema, the 5V
> supply regulator must be defined via the 'vdd-supply' property.
> The driver however requests for the 'vdda-phy' regulator which
> results in the following message when the driver is probed on
> a IPQ5018 based board with a device tree matching to the schema:
> 
>   qcom-m31usb-phy 5b000.phy: supply vdda-phy not found, using dummy regulator
>   qcom-m31usb-phy 5b000.phy: Registered M31 USB phy
> 
> This means that the regulator specified in the device tree never
> gets enabled.
> 
> Change the driver to use the 'vdd' name for the regulator as per
> defined in the schema in order to ensure that the corresponding
> regulator gets enabled.

This lgtm, but it doesnt apply on phy/fixes

Can you please rebase

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
