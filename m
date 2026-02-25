Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C921FD374E
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 14:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RYcLyscC4/fLLNdfHqBfKtdFuz5xA+wzka9Mh1ZWcx8=; b=SVbRy5iJkOU+Hx
	hsz1qDL0Kc8K+xKIGu8PVKfmxjoE7p1K5yoFb8RgHqiMWiiq+5fVAMD+/O8HuhNVH4FdKT9xmJ6Le
	7tg5pAA5hkVCLuTLVkFfGazatRS3sb/OytqCpyJeHDRy03/7HWiXDnnPqjTxs5Gws8WFK9GoyrCnK
	4WPQU2Q62wqNaV8WE9tZ8eC3xjOWhOk+dovAOEsafP23srYPydqCB9VG30U9zjpdtY3js4WzsoDD2
	OTq7YPeiCb4RqDjQuvrgZuyE22wya7Iy8wMuivMiJt310TiGRUmBrsVUYVZHJvxFpou90qs4ZPs8g
	8cd1jZFrDcUtfv7Df3xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvFTP-00000004A1c-4At5;
	Wed, 25 Feb 2026 14:02:43 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvFTM-00000004A17-2M5O
	for linux-phy@lists.infradead.org;
	Wed, 25 Feb 2026 14:02:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 997EA41788;
	Wed, 25 Feb 2026 14:02:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED019C116D0;
	Wed, 25 Feb 2026 14:02:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772028158;
	bh=cVA2ZB1hhEc1Ca+oFoNmHo1GyY9qK+vTY6cSvnAbShw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=SBBCjwB7CbAx6F/56V+WE4pYESWllG/pYXW/sRDaW47J7DFQpg3gRlP3rRDZtjlAJ
	 /rJR7G+l/CgyCf1JKh6urdL4IBb9fUdXt3YuciY3WIBsDnK0iokoDh2X3WUsimJIu8
	 c/dN3Hf+CDNS0zwmb9404bA/Khpx94Jsnf/hWtE5VubQY2cHU+u/Ndc0GnYr//3tan
	 VgRGf0dODGhnpRr4Pb8YBPEJFGdPrZDz6Z7PWC90f/cJXi00rIwQSAiX7QMi0+L3E9
	 iSCHlLut8gBEDDucAEBUxNWlQygj3drsE94tokbogszsFEilFIoOtIe+bmgWG7iq1k
	 kN8bhUHOUKl6g==
Message-ID: <f3943cc3-0dec-4636-bf7a-07c1785303eb@kernel.org>
Date: Wed, 25 Feb 2026 14:02:30 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260225-x1e-csi2-phy-v2-0-2f3770f660d1@linaro.org>
 <zqhLSyCfxxuX_pfkSbshBiz_4hzFu7Ew9ZQzavJd6eCyw_njvcPaMh8GkzQQ4GFYzMzSBjrXUyL-Sd6zIqwsog==@protonmail.internalid>
 <7c68d164-e2ef-4e2b-9ba3-9a8515128cc4@linaro.org>
From: Bryan O'Donoghue <bod@kernel.org>
Content-Language: en-US
In-Reply-To: <7c68d164-e2ef-4e2b-9ba3-9a8515128cc4@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_060240_621031_13391C85 
X-CRM114-Status: UNSURE (   6.37  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 25/02/2026 13:48, Bryan O'Donoghue wrote:
> On 25/02/2026 02:08, Bryan O'Donoghue wrote:
>> v2:
>>
>> In this updated version
>>
> Oops I typed "b4 send" @ 2 am instead of "b4 send --reflect" this series
> isn't quite ready yet.
> 
> Please ignore.
> 
> ---
> bod

Ah... I see I'm talking to my "b4 send --reflect" :)

Never mind

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
