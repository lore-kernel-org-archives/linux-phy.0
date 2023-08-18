Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83754C001DE
	for <linux-phy@archiver.kernel.org>; Fri, 18 Aug 2023 10:35:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oaPmcH6wIG2ucYOFuAucVHvp6N5ALCjJA7cnTBMnRFI=; b=3neS6NCpuOEj4W
	PIHNtzhFFDRJbIBSn56wiIhVQ8Z8ha4y86zfKWHqsqVmuCzGPnyWLNkECECPTOEHKCWzkSaA2K4Y4
	Q7pzOuSMzy+skQ7ZfmQM2e1Ci09/mnMkmxjWP65ijbnOxMzdCK7T8z+2q1aytCz0BCmj8G3hhCvlC
	75evfkbqs256ir3cMRkbTMcDLHz7nekUvJP1hnlkPiLIlpHYSZfnW8jNVhlC44XGIesH0wCYywX1d
	jlyajI7Tr/LY8jF1dxvXaVFvnAHeDmkhSxDDF+RmWUArQ+TMf5AzrYMe+dMA/FNhJ1+uACY5nPB9e
	zZ5PQTo8Av1PGi1ojjzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWwoq-008GR5-0J;
	Fri, 18 Aug 2023 10:35:04 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWwon-008GPs-17
	for linux-phy@lists.infradead.org;
	Fri, 18 Aug 2023 10:35:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 69CC667949;
	Fri, 18 Aug 2023 10:35:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3AAF3C433C7;
	Fri, 18 Aug 2023 10:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692354899;
	bh=5gYnBS8TenuhKeOT2Up5sY1thHDey3X5OUrwVSR/vKo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=XC+DmqGY9ePxMX4QdkY9ykzdkVy3H2eSqZKzdC/rb3zjAvpAA5qB8lNi3oAIQUpk9
	 jQ6hwyP9K6ZvUMYmYwnyZp4OGHkhLs+RlaFVvlluohm181Rtll4JJ8uVHQLSneHb7L
	 osBlQhswRBxJgAqaiGx1EEL2hzFuNRDQJ9A4dLcsWJx3xI9BovJun8xfuyRfayFhSr
	 CSypkv4UHsBmHRxxM2xPdFg2860dQSl/Tu+6++kGK4xoswi8wQxXS3tF7eAJDs4SFb
	 YjvLPDJqW43iH/8nAqqT6ox8W67txKP2lFywntBh215YWV/AoiV+iz5N3m+8gIk3qG
	 8Mym/Fu95+XVQ==
Message-ID: <82252735-f75f-8f09-0088-46f216ff1720@kernel.org>
Date: Fri, 18 Aug 2023 12:34:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH V1 1/2] dt-bindings: phy: Add QMP UFS PHY comptible for
 SC7280
Content-Language: en-US
To: Nitin Rawat <quic_nitirawa@quicinc.com>, andersson@kernel.org,
 konrad.dybcio@linaro.org, vkoul@kernel.org, agross@kernel.org,
 kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20230816154841.2183-1-quic_nitirawa@quicinc.com>
 <20230816154841.2183-2-quic_nitirawa@quicinc.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20230816154841.2183-2-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230818_033501_451733_E7E82DE5 
X-CRM114-Status: UNSURE (   9.63  )
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

On 16/08/2023 17:48, Nitin Rawat wrote:
> Document the QMP UFS PHY compatible for SC7280.
> 
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---

Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC. It might happen, that command when run on an older
kernel, gives you outdated entries. Therefore please be sure you base
your patches on recent Linux kernel.

You missed at least DT list (maybe more), so this won't be tested by
automated tooling. Performing review on untested code might be a waste
of time, thus I will skip this patch entirely till you follow the
process allowing the patch to be tested.

Please kindly resend and include all necessary To/Cc entries.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
