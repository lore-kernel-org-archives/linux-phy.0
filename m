Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6693BC4828D
	for <linux-phy@archiver.kernel.org>; Thu,  1 Feb 2024 21:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=93VJYVV3eja8KhZA0jj2dRen62pUKnd5iQNnPKhzCh4=; b=KN73EdQGHHHh0p
	EiU6vetNwTlznE3O6fN+1eH+p3BBxrrOWsAQR0ae1KfIlBg6O9p8jXw/st/Jkoe4tBuerh6dcMH0P
	zU6EhVHZcA8i/V+lIuynltS6Wk5wVuIq3bUWt+2UvMsznWtm7BRtVGa792BOoqWqfec4VksnSOhv0
	3r174h316hrtBUdt0HTOsffC6V4ZP4I1nN22Y/xiDCox9gTdicgmZNv8TTy8uNJSWl1r92NCA/6G5
	7NGblNd/EVxwbSbO4zTHAD4fpcEBbBeSFMPcb7EN/R7uozylz05lyN0EACoqulQTfQaXOiyNT7DBz
	MUxZuHKrSurNo725ooYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVf0T-00000009Sms-0MKO;
	Thu, 01 Feb 2024 21:54:01 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVf0P-00000009Slr-47iG
	for linux-phy@lists.infradead.org;
	Thu, 01 Feb 2024 21:53:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 49119621B4;
	Thu,  1 Feb 2024 21:53:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F239AC43390;
	Thu,  1 Feb 2024 21:53:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706824436;
	bh=ApF0fuJM9LahCwtp9OKHrxVJ6Bt5ITSdn6RlluIjytU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ZsMgwn8JOKoqImUIHlGktSAqvBXVIJwKqi3VBWhX+gBNLb8Tqk/wsc3FwxEcT6YNE
	 PeoAod82Pd5pk1H4h36ylutaQqPqnihNu6yRvLs6lAViMyy/ALhJ3uFl/UdgQZbpy3
	 25AqEGw+DQ/+kuhwHGKnzs+tuR0ASIeT2GjDZxeC/c/698FKEgd1bk8IZ4rP+/s6hJ
	 9BTx7s67DUy4k02VYyZ9+UnhrwcVa8LsDKdhr0wifkGTGQhli10pHK/0f0ArVAEAPi
	 YDNtOObFONTCNoDLze1gWWS9ZuqErTaw6uEhUR5i3eNb9bkbkTXJshlujqqASI19Kg
	 oVGyoTHtW6bIg==
From: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Andy Gross <agross@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	cros-qcom-dts-watchers@chromium.org,
	David Wronek <davidwronek@gmail.com>
Cc: linux-arm-msm@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	linux-phy@lists.infradead.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Joe Mason <buddyjojo06@outlook.com>
Subject: Re: (subset) [PATCH v4 0/8] Add UFS support for SC7180/SM7125
Date: Thu,  1 Feb 2024 15:53:47 -0600
Message-ID: <170682442877.248329.5672084774517998432.b4-ty@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240121-sm7125-upstream-v4-0-f7d1212c8ebb@gmail.com>
References: <20240121-sm7125-upstream-v4-0-f7d1212c8ebb@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_135358_125606_666A6364 
X-CRM114-Status: UNSURE (   9.26  )
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


On Sun, 21 Jan 2024 17:57:40 +0100, David Wronek wrote:
> This patchset introduces UFS support for SC7180 and SM7125, as well as
> support for the Xiaomi Redmi Note 9S.
> 
> To: Bjorn Andersson <andersson@kernel.org>
> To: Konrad Dybcio <konrad.dybcio@linaro.org>
> To: Herbert Xu <herbert@gondor.apana.org.au>
> To: David S. Miller <davem@davemloft.net>
> To: Rob Herring <robh+dt@kernel.org>
> To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> To: Conor Dooley <conor+dt@kernel.org>
> To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> To: Alim Akhtar <alim.akhtar@samsung.com>
> To: Avri Altman <avri.altman@wdc.com>
> To: Bart Van Assche <bvanassche@acm.org>
> To: Andy Gross <agross@kernel.org>
> To: Vinod Koul <vkoul@kernel.org>
> To: Kishon Vijay Abraham I <kishon@kernel.org>
> To:  <cros-qcom-dts-watchers@chromium.org>
> Cc:  <linux-arm-msm@vger.kernel.org>
> Cc:  <linux-crypto@vger.kernel.org>
> Cc:  <devicetree@vger.kernel.org>
> Cc:  <linux-kernel@vger.kernel.org>
> Cc:  <linux-scsi@vger.kernel.org>
> Cc:  <linux-phy@lists.infradead.org>
> CC:  <~postmarketos/upstreaming@lists.sr.ht>
> 
> [...]

Applied, thanks!

[4/8] dt-bindings: arm: qcom: Add Xiaomi Redmi Note 9S
      commit: 526b333d7c275a851ce982357218496569b3958e
[6/8] arm64: dts: qcom: sc7180: Add UFS nodes
      commit: 858536d9dc946b039e107350642ac6d78c235a6b
[7/8] arm64: dts: qcom: sm7125-xiaomi-common: Add UFS nodes
      commit: 00aaa58e8936558f7526f2376d3740885b5c7312
[8/8] arm64: dts: qcom: Add support for Xiaomi Redmi Note 9S
      commit: 6016fb7c91f72f4afbb4017e13cd91954d0f1a9b

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
