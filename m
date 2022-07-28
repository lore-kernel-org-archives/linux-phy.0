Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BE9CC04A68
	for <linux-phy@archiver.kernel.org>; Thu, 28 Jul 2022 11:54:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uoGpttyFr9YoSAJ0WgKfZgMTWxK+zHojY+GxYFg/Gc4=; b=sRX0ev/SauMkyn
	5OKe8y9k5XCCinCez6d+syQgv+NPlbgNsYrkpG7r/GmFdEINKfJa63QByldpk1Kn5eDswYwQBAr2g
	w7O1Drlis34G+9PbkswH+UypVe8FgoI2xqkgxNumxIlrsxv/WfcwVAg6ZaTRLpWWxGWgo34PASb3B
	/Y/8o1KcgbYxc2VTC4apusqbY711zoSyrxO5w16qr+10xBpbqMDSUhrzcKSgDcmlHBbnkIm5Vxbz4
	YHZeI+QRYfuuJwHmLYKGbH3+6KVY9WxVPFwidoF+XjAzQwhUP9q+WiaTVI6AEN9gvefVsEp4nX6F4
	2VPQVVDoM8HbTfDUp3eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oH26O-008xB3-Dn; Thu, 28 Jul 2022 11:54:52 +0000
Received: from ip-94-112-206-30.bb.vodafone.cz ([94.112.206.30] helo=ixit.cz)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oH26K-008x33-NM
	for linux-phy@lists.infradead.org; Thu, 28 Jul 2022 11:54:50 +0000
Received: from [10.0.0.163] (_gateway [10.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by ixit.cz (Postfix) with ESMTPSA id 74DCE2007F;
	Thu, 28 Jul 2022 13:54:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ixit.cz; s=dkim;
	t=1659009279;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xBk6SGTBwPTuekVWue/fCOOAmcq+VPJhMxPeqTg3xG8=;
	b=u2dtBhDzbDSR4Qn6z3T0tQCuFlFkb5hjb/AiSMjtxmbkrbSB8cr75uFFih7PwC9sBzPV7E
	J9gAc4bIKmeTbIXN3XCGUkxO76zinQNpOCiZvva3uPlLveeFF7TfQj3BayN6JCb8c1TbqZ
	xlJ+F1E0Pf9mXeonLe0zQq1vD+rh+X0=
Message-ID: <875f6675-9d28-7ca2-704c-4d1a6c69a21c@ixit.cz>
Date: Thu, 28 Jul 2022 13:54:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:103.0) Gecko/20100101
 Thunderbird/103.0
Subject: Re: [PATCH 3/3] dt-bindings: phy: add definition for MSM8960
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Shinjo Park <peremen@gmail.com>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220728111740.30595-1-peremen@gmail.com>
 <aef9bae5-b72b-d520-a8e5-8f6a838775eb@linaro.org>
From: David Heidelberg <david@ixit.cz>
In-Reply-To: <aef9bae5-b72b-d520-a8e5-8f6a838775eb@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220728_045449_005003_E9A320A4 
X-CRM114-Status: UNSURE (   9.47  )
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

On 28/07/2022 13:47, Krzysztof Kozlowski wrote:
> On 28/07/2022 13:17, Shinjo Park wrote:
>> Document the changes introduced by MSM8960 inclusion.
>>
> 1. Thread your submissions.
> 2. Use subject prefix matching the file.
>
>> Signed-off-by: Shinjo Park <peremen@gmail.com>
>> Reviewed-by: David Heidelberg <david@ixit.cz>
> It is a v1. How the review tag got here?

We have a Matrix channel ( #linux-apq8064:matrix.org and downstream fork 
for apq8064/msm8960 [1]), so I saw the patch before it was send to ML.

David

[1] https://github.com/apq8064-mainline/linux

>
> Best regards,
> Krzysztof

-- 
David Heidelberg
Consultant Software Engineer

Matrix: @okias:matrix.org


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
