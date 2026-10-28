Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9196606A325
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 15:36:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=g/NBzUyC;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=HT4IsAu4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=kjeXBpl+9c4CC//hYpFb/VLxqJpEDHrCqOX74yAPqwE=; b=g/NBzUyC8C7h+18ib95/ahg/65
	v7RDHA6R2s71TREeMgvd0MD4+n++Co3HtqfDGOpAaX4Hp2KpLulzAzxzwRYW7+iwuyD3BELoNdHXz
	FzNzbr/M6veX8QYKK1LzRV6Tcw2qR5smbVkqA3LnVCzLvFCp6+6wFJ3svlRjGqvT+mBZv4YcUFD2j
	rKG0/7+KtV+UShb9Ffe56p1hG2O8WF/im4R6nqNYCJBQm5h4EkB40gC0UvAR464vHbEJRQ3Nfca7G
	srF2k0iVcDfGpclXN5tsvhaUt1qRmUOUhVVne7oNP1nrmbgA8WHPQxKZwQ8cglbujMPBiJ7y/9cms
	h0eKR+xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5hF-00000007PfE-29Nr;
	Wed, 28 Oct 2026 15:36:13 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5hC-00000007Pcp-2fDb
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 15:36:11 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4a5b2be99a8so9801835e9.2
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 08:36:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1793201768; x=1793806568; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=tnqJ5WEWuOH/sryca1mtSF1R/jE94CQ0TEC1LthA+kg=;
        b=HT4IsAu4LA6pE+s0/Ryc9yYPEcJJX+W0alD2UDtbi+39DjFGe+NWXQ7Z3gq6gD6tUE
         qw3BUuaoCZ58EsZ1hKi7AssS++5jxlYHhjC9ZX0sl2LTZ486SlxCBSWA4A3txsBTm+5R
         Cio6O8XMCsouga7aCewVzZrxgsJPBshpaDrRDOWtYIwFG3JsLkMNTR1ttaP5XprmEqjY
         Ku8eiVFDTDeLQWLAQ08zL5q8GiJ55GEAQ/PiAj2nPpZpStwMpfO6yau0vy2Jv/Pmqzeo
         t01zwDhx0cLi7gXKujR7ZCzmW8tukMNw0DWIM1mFiG3FMyQl8EL0FasmwgFSfWcJ/lEe
         Gm0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793201768; x=1793806568;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=tnqJ5WEWuOH/sryca1mtSF1R/jE94CQ0TEC1LthA+kg=;
        b=Hde5gc9Q9/wrR83rZxgNEneL/xOkFcAFkuKcyqRQ/vyIRwb3ExnkGfQQ1BD3PfiZRZ
         9Ajxdf5xMrnK/4Ma9TnlUNSf0/khfFHrB9j5Ey2rgnuxsarMkz2pYsT1CZ/ZXs2Gtfgz
         DHWgyTjRszNPBPxHCa9J0FYiV6/ywHloc00zMUyY3q86axBqUdOq+I0UYOx1T2VfuSIz
         9yRr/E/3BYqJwaT++D6xc/T9eQd8oWqi4xETXHNb0IUL/FR0ZJN60bh9Y5iHzS8WwFIC
         pbbVVmZMmeuR5+M2eaZYP6ltR7e4oFZOjEyHVoAWNq2CGA8D0k7voULctp1KfvPvmfk4
         jxEg==
X-Gm-Message-State: AFq9FYIxES3gBm2Ar+p/OZC3PoudfNk7e1YNJcgm7socKLthqfYNviow
	wbKiZvpjDhAfLLO4DIBIN0RV7Znnh77T4b1zs666rKYBIIxr/lRE6Hnm+6dS1S0qaYQ=
X-Gm-Gg: AYBFou21os6jVpp77dZEes8LEmpfqLVbp5ca9SkJhEgTP7eGdXmIUzqHdxz8kf2H2yM
	niWr48Y6aHHkPS9MToYz35RYrHGsm5O3lnnhdz1BlrExkQEEb9Suf62oFzWBTJg1uXGrehGNkUB
	3fHbYEmi7RpoSfhSyZiYtFFSTvL319YcdCrwb/WpRYdl7rXKQiGMR7e9rHZG5IptUPtpEEsp4RU
	93Zbo8q5FruDHICWSOs8Ef7OzEnPmg1uWhxpJc8g+DqkUH5wnOv4VV6OPp/7VZ2RWBWGYTsjk5o
	rFIe7XMHYevGVv+De0OO0hACqOJzsWhrd1W7orvpoXvUQ5c09fqiS/VI/CUE957Qq6NFqzHJ+jy
	/sBO5VXEABoXyRMnapgL4lhFgEcZNg4YyTnPh9WYPiMKdr1mSe+sqZZZAE7g7fB+dv+i/ak9oFm
	KHAvdotPpPvd5H9PpK/g4OtK+TWCxzyQ00yMB40zChRIzaz5wemfLkbMndH2Si8jNWh4VBwaZyh
	FeBAVzIE7qrcJkmvz2/QwnqPO0AxAcXbFHkeWpVMwlsl9xM9TC0VJiaIAvIemq1WNEND6naPgLN
	iWkdCeBED/nWxs5IFjLpuPNbae6KFK30XJfI2zXu5w==
X-Received: by 2002:a05:600c:154d:b0:4a3:5a42:b2a4 with SMTP id 5b1f17b1804b1-4a96720266bmr62849985e9.12.1793201768098;
        Wed, 28 Oct 2026 08:36:08 -0700 (PDT)
Received: from [192.168.0.167] ([109.79.76.222])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a94f05f168sm41594465e9.4.2026.10.28.08.36.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2026 08:36:07 -0700 (PDT)
Message-ID: <ba560f04-d817-4b01-a1c4-293165625f07@linaro.org>
Date: Wed, 28 Oct 2026 15:36:05 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v23 11/15] media: qcom: camss: tpg: Add support for v2.4.0
 TPG
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, jeyaprakash.soundrapandian@oss.qualcomm.com,
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
 <20261028-kaanapali-camss-v23-11-95f250b18612@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20261028-kaanapali-camss-v23-11-95f250b18612@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_083610_692364_A3425E56 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 28/10/2026 15:20, Hangxiang Ma wrote:
> Add support for the TPG found on Kaanapali. This TPG uses hardware
> version 2.4.0, which drives test-enable and reset through the
> TPG_CTRL_CMD register at offset 0x1f4 instead of the TEST_EN bit in
> TPG_CTRL and the TPG_CLEAR register. Its output is routed into the
> CSID 1080 RX through the CSI2 TPG mux, so the CSID selects the TPG as
> the data source when a test pattern is selected.
> 
> Add the TPG resources to the Kaanapali camss resources so that the TPG
> subdevices are created on this SoC.
> 
> Signed-off-by: Hangxiang Ma<hangxiang.ma@oss.qualcomm.com>

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
