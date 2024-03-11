Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 990CBC54E58
	for <linux-phy@archiver.kernel.org>; Mon, 11 Mar 2024 17:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bkliw69XLtBb7YKgtyQtG5mmJqq7fjLWGmK3hr9CP5w=; b=qIYaG6PztIddt6
	AqDHoBv4RGUEh+plh6BuMYDloKRKw5+iyfgbvP+6bG3TJHdVd1GogzgpoADFxNeC7S8mgXm1pZsIr
	M9CPynZkD8hLCwsHQcYfkwIBWBWPh0FJdmG3jrbYcvGi2SiBmgOdTKVT4XlkOpGEMEX2d8fXX7qWo
	CMXYVp04yBGltCwtKXdycaDXzsJKK9jLH01P80YDcmIdWKmHgG/YkhXFnXSToEiJRb6BDDHzmWctd
	NHy6m08l3B3IMcjdywAr3+iqszFZDYWYz5w3zQqkysI3YzVefk6jbIVL3aqEQ73rETrhrOyoVuLm8
	DNp8G8l34s09QCdnlDfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjjgd-00000002Yoq-1D6x;
	Mon, 11 Mar 2024 17:43:43 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjjga-00000002Yni-0QbF
	for linux-phy@lists.infradead.org;
	Mon, 11 Mar 2024 17:43:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 678D860F0D;
	Mon, 11 Mar 2024 17:43:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E58B0C433C7;
	Mon, 11 Mar 2024 17:43:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710179019;
	bh=1O6KqSX/9qgFYIjlCHevAQ4XV7SOdYdHdydqzRGVpsI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c+cimJKqatMYQCrt0xa9WeHsSzhSs1Sgq7H1On+IwjglcbkbeyxkjkLRTbIiqOM5z
	 VoQpn6zg44YJ3qBx0gkveX7E2gnz01cFUtXK1Pf14eAkmpIcKFTKcypwpkrOvCAijP
	 YpWA93aY3YLurG3rLwBOzd8ohJyGburpWFmx87pZktw9YkDZf/jnG0MBliGAiUwq/2
	 AEvZtVQKbpKaDDkBG+Be/X0H0fUVVYWj2f4wx/VCzUyY7UUTIdGXi114ruvn4k/jhr
	 Ry8xc1UuWk3NfN5usf9ijl6Bn9Q6c4mmwLETJQu2i3oX2vCBERSIq0nJoP5bhsIVk0
	 mUTWEYTY/hPFg==
Date: Mon, 11 Mar 2024 11:43:36 -0600
From: Rob Herring <robh@kernel.org>
To: Komal Bajaj <quic_kbajaj@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
	Bjorn Andersson <andersson@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 3/4] dt-bindings: usb: dwc3: Add QDU1000 compatible
Message-ID: <171017901624.1476439.10740898419588500267.robh@kernel.org>
References: <20240311120215.16845-1-quic_kbajaj@quicinc.com>
 <20240311120215.16845-4-quic_kbajaj@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240311120215.16845-4-quic_kbajaj@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_104340_200942_04C98C88 
X-CRM114-Status: UNSURE (   7.41  )
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


On Mon, 11 Mar 2024 17:32:14 +0530, Komal Bajaj wrote:
> Document the QDU1000 dwc3 compatible.
> 
> Signed-off-by: Komal Bajaj <quic_kbajaj@quicinc.com>
> ---
>  Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
