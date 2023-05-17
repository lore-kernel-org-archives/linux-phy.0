Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 812CEC7EE2A
	for <linux-phy@archiver.kernel.org>; Wed, 17 May 2023 08:14:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sNAe2jnjmAixkLoTtDpJZfL99/XDt06DDtSMGd9Px9E=; b=xXQq7PUkcIfqn3
	QYmBj3yMvi4y5Fm8VODdDWAZTiHJLbwB0sNkrkNvmHwOYn+2NWg67MwC0yI4b9R8RhRax4urTxHXS
	Wgu3YQsIc6uagrmpeJLdWNm3F6qM6TzbDeJLTu6E/sQkdac4hPEwZgAIWT7rLMxSsuFAsiAzXO13u
	59cR5ZPJQ0fRpnW0J+NLTAjfEnvg3nWAGw1+Sit02iNxl5WdEDFuACkonIvJNh2qX4RP1K1rYzaCW
	w9MjhaMX2zRtSLLAjOVoRJuNKm4rrQ56FNG8HEa/6GjeO/nWEeo2fOqKIn+WQiICvjYNwF5JyPiMH
	QvzlnxdPP+97Dti+5ckA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzCIw-008oO4-3B;
	Wed, 17 May 2023 08:14:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzCIs-008oMJ-0w
	for linux-phy@lists.infradead.org;
	Wed, 17 May 2023 08:14:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6B3F16360C;
	Wed, 17 May 2023 08:14:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59D4CC4339E;
	Wed, 17 May 2023 08:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684311272;
	bh=hQk2V61WT0ZjwjBD2C1jC1NdNjkBIK/8T3va0d3Yt14=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=J1xp/Wh7+3wfQfMWt44YSKyN469bd+w+tMQvSbLbM7YduzmOMeTvzNWLJ1wOke2WO
	 UIyGUxhMzohW1yPdTrzHkYhM13UOZo8YA0VTfb0+VnOaTcyw8MV9pznKxtJI5Fco7c
	 dNQj9RSzsGXdZx6CroVHj12FKUFpVzaWAGGXnz4y2RChBOLkspNMCHkIAa1komDI39
	 XF9E5OR1To0i87muELit2gX31C9X3bJLB+vcRW8Gzr509IKOwHGNbzn1W/Wb52SBOG
	 ck3zxBFWzvtYYGpqP05ykHMi+RLQ7tBeLxKFlb/h8EVxcQxWzEisf7SCqD75hzXbCu
	 UUfqXiyF+Q/aw==
Date: Wed, 17 May 2023 13:44:28 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org, agross@kernel.org,
	linux-kernel@vger.kernel.org, andersson@kernel.org,
	bhupesh.linux@gmail.com, krzysztof.kozlowski@linaro.org,
	robh+dt@kernel.org, konrad.dybcio@linaro.org, kishon@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, dmitry.baryshkov@linaro.org
Subject: Re: [PATCH v11 0/4] Enable USB SS qmp phy for Qualcomm SM6115 SoC
Message-ID: <ZGSM5FHG8Ln2t0G7@matsya>
References: <20230516150511.2346357-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230516150511.2346357-1-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_011434_370983_8C8B8A8A 
X-CRM114-Status: UNSURE (   9.34  )
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

On 16-05-23, 20:35, Bhupesh Sharma wrote:
> 
> This patchset adds the support for USB SS qmp phy for Qualcomm SM6115
> SoC. For the previous versions of this patch there were conversations
> on irc as to whether this was a 'qcom,usb-ssphy-qmp-usb3-or-dp' or a
> 'qcom,usb-ssphy-qmp-dp-combo' as per downstream code and hardware
> documentation.

Applied patch 1,2

Thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
