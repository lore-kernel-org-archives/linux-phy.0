Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F19BC61DB3
	for <linux-phy@archiver.kernel.org>; Sun,  8 Jan 2023 22:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:Subject:From:References:Cc:To:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CY3BEAAUA7Xu52TvV0FMSsvqenZFdV7z+jF44EyTDao=; b=CnCSV+qaP5cHxw
	xkw3pPn7XTRfabbom68lVE1vcxCFwG8R50icqtlEoSsFaWhRu2ES4uWU17i+Ig0lC0vQYO/VN/Lh/
	GcvH7DvtP85swOFAT74Nh1t0Si5e5HXoiCUyFtPRXqhFNL78BhmHy7IKwiC9ntPsLQlBg8dddRXKS
	3ov/IZ2COOOopnR1gbNAUXboR/8cXMx33/cNk3Neqw+xmBnNqIsVhT6YSAyQQcWOyehyZrCfacKus
	7kgLWgTuSVQfapn4731PBTPYogahWIOJ31aRUR4WEMqgvnf6wEHTEm/tZHgHxz+BrVl+4308uGZXW
	pzARipOLIg/rorH0cgIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEe1q-00G0Zf-Uu; Sun, 08 Jan 2023 22:20:34 +0000
Received: from vmi888983.contaboserver.net ([149.102.157.145] helo=amity.mint.lgbt)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEe1o-00G0Yr-RB
	for linux-phy@lists.infradead.org; Sun, 08 Jan 2023 22:20:34 +0000
Received: from amity.mint.lgbt (mx.mint.lgbt [127.0.0.1])
	by amity.mint.lgbt (Postfix) with ESMTP id 4Nqs305VZJz1S5FJ
	for <linux-phy@lists.infradead.org>; Sun,  8 Jan 2023 17:20:28 -0500 (EST)
Authentication-Results: amity.mint.lgbt (amavisd-new);
	dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
	header.d=mint.lgbt
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mint.lgbt; h=
	content-transfer-encoding:content-type:in-reply-to:subject:from
	:content-language:references:to:user-agent:mime-version:date
	:message-id; s=dkim; t=1673216427; x=1674080428; bh=StAJiwaFSWK0
	oRu5sb22M02ztG8ghVtA9FhCHEt3NzQ=; b=lMFkcskwZAyX7GXnQtYoVxIA7iQm
	5mMF3sLyYwZiFFZ4gW3sT18E3xWsoy2sSSNk0qUaQDgO3PK3cvigucWkLmoc1rUB
	e3jJ2cnQl7KtMrsykWTJy3dUYSAfYMmH5QfATtg8njRHfpH6YDZL72WRaspePe1D
	uVMaFnuweMsp97npBPQo5UTJyC0sJiGbHaxjsJL6B3OnZnL6EmaZda861kJxVnJD
	ypQAf9QMcDyoWES1FMgyUWAXajSMi4Alk1qIMXXP84P40/PJ5lkhp2pN/k/lwYMN
	m+b3Fq3EcRed26bR3WD0LnwgS5EQBww7wSsvhqRUfduC9/XSXWj2e0DqvQ==
X-Virus-Scanned: amavisd-new at amity.mint.lgbt
Received: from amity.mint.lgbt ([127.0.0.1])
	by amity.mint.lgbt (amity.mint.lgbt [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id iajoq9G2LVID for <linux-phy@lists.infradead.org>;
	Sun,  8 Jan 2023 17:20:27 -0500 (EST)
Received: from [192.168.1.96] (unknown [186.105.5.197])
	by amity.mint.lgbt (Postfix) with ESMTPSA id 4Nqs2r1cGpz1S50l;
	Sun,  8 Jan 2023 17:20:19 -0500 (EST)
Message-ID: <71daa662-51c2-f4b8-d716-08c3c4480911@mint.lgbt>
Date: Sun, 8 Jan 2023 19:20:17 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Rob Herring <robh@kernel.org>
Cc: linux-phy@lists.infradead.org, marijn.suijten@somainline.org,
 Vinod Koul <vkoul@kernel.org>, linux-kernel@vger.kernel.org,
 martin.botka@somainline.org, Kishon Vijay Abraham I <kishon@kernel.org>,
 devicetree@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>,
 Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 ~postmarketos/upstreaming@lists.sr.ht,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org
References: <20221231222420.75233-1-they@mint.lgbt>
 <20221231222420.75233-3-they@mint.lgbt>
 <167320890262.220493.12109738826337104873.robh@kernel.org>
Content-Language: en-US
From: Lux Aliaga <they@mint.lgbt>
Subject: Re: [PATCH v5 2/6] dt-bindings: phy: Add QMP UFS PHY compatible for
 SM6125
In-Reply-To: <167320890262.220493.12109738826337104873.robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230108_142033_052596_E55B2C2E 
X-CRM114-Status: UNSURE (   9.41  )
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

On 08/01/2023 17:15, Rob Herring wrote:

> On Sat, 31 Dec 2022 19:24:16 -0300, Lux Aliaga wrote:
>> Document the QMP UFS PHY compatible for SM6125.
>>
>> Signed-off-by: Lux Aliaga <they@mint.lgbt>
>> ---
>>   .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml       | 1 +
>>   1 file changed, 1 insertion(+)
>>
> Acked-by: Rob Herring <robh@kernel.org>
Hi! You seem to have acked this patch from a previous revision of the 
patchset. However, it was left unchanged so if I need to submit a new 
revision I'll include this signature. You can the newer revision here: 
https://lore.kernel.org/linux-devicetree/20230108195336.388349-1-they@mint.lgbt/T/#m9862de18e18e1c0f4abf9db0bcc7c4d2f7f1a948

-- 
Lux Aliaga
https://nixgoat.me/


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
