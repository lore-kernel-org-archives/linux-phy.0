Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F8CAF46C53
	for <linux-phy@archiver.kernel.org>; Mon,  6 Apr 2026 15:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4trvdikca8mITPK3x30saGfunGw66f0L+d9M9yuEv4c=; b=FnhNZaPTXF/p28
	OmaSZOAg9LP4xvZrvwGsdaFPsRh5TJkbJz/LsOgqG62rPN3ZUX5Bo3SOyjQ9FoPZM+5wOKKdtySkL
	Bi931IQdqWjnAgv26Y9Tpk+Myn68PTyc/fkV4xoprhlkDs7mTGR50K7Z1nopi+INXBDY2NJMy+rpz
	E62dnWjcgtEwrS/k2FZlINIT42jqPdJYCdC3L08aYqPGwEvYdZgFYO7N1402NU89Sz26M/T9ah8RL
	7fVnIK9Qa3bDgicZsKJhP734FB7Q67LsxVQYw+ORC+eFxNkuEYSddu4byWJignAYVosL51Io9YqaQ
	3MF/Xg21lazrH/uCs/+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9m1J-00000005HPF-3huZ;
	Mon, 06 Apr 2026 15:37:45 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9m1H-00000005HOu-1XCv
	for linux-phy@lists.infradead.org;
	Mon, 06 Apr 2026 15:37:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 107214418F;
	Mon,  6 Apr 2026 15:37:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1FD41C4CEF7;
	Mon,  6 Apr 2026 15:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775489861;
	bh=trgx0SrQvYQd2nngBh4hc3KHxII4z5j1juLG5NRASmQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=GR14fQSxvsIM15o7/6sL9XZrVLRdS8fO03y8ZLCk447TwI/yk2AVpPRhsv4V+jO4n
	 +Bdmk8NLOqPs4swI9ZO4mgrFhvAkFjw1oTFrt6zkrjt1czrPQEsZmX5ZfR4bLsKWDp
	 LTo1MFB9rtAtkPy6b11VNoGVBFzxWbeyFuTDnWjsbPzBvYaRF2ZrhIWV/ZemTGwgFp
	 F2eeaFbmM+sTWlK6kLTiB8UdBDGFIJbuwf3apyxiARAFWFeX24A8z7Oz+0ad8LC0Wf
	 2Rb5k2eYt5r30QsWqd3HNI+mJEAd3f5NFwcmA/6wwu0QfGwkP00vcXbnkRp811O8L2
	 3VeYUAZtI+cpg==
Message-ID: <a310c4bc-0ebe-4caf-b784-e438c9460487@kernel.org>
Date: Mon, 6 Apr 2026 16:37:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260326-x1e-csi2-phy-v5-0-0c0fc7f5c01b@linaro.org>
 <20260326-x1e-csi2-phy-v5-2-0c0fc7f5c01b@linaro.org>
 <4A_In93EaOJI3pe3dV74CQmAmTe8rJkOYlMdGodO2l8jXQ6mPJdmnQ3VpfHRoduYhZdm0PpwNjm9sZHu-vjNug==@protonmail.internalid>
 <qrzaihfpujlhqeukp7wioqrqjbpih65smmieliixavzlev6las@odmnpbuc3wrm>
Content-Language: en-US
From: Bryan O'Donoghue <bod@kernel.org>
In-Reply-To: <qrzaihfpujlhqeukp7wioqrqjbpih65smmieliixavzlev6las@odmnpbuc3wrm>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260406_083743_454242_867340D7 
X-CRM114-Status: UNSURE (   7.76  )
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

On 06/04/2026 15:28, Abel Vesa wrote:
>> +
>> +	for (i = 0; i < num_pds; i++) {
>> +		csi2phy->pds[i] = dev_pm_domain_attach_by_name(dev,
>> +							       csi2phy->soc_cfg->genpd_names[i]);
> You need to do detach these on error, otherwise you get:
> 
>   sysfs: cannot create duplicate filename '/devices/genpd:0:acec000.phy'
>   CPU: 1 UID: 0 PID: 93 Comm: kworker/u49:2 Not tainted 7.0.0-rc6-00062-gd691cf9ea708 #12 PREEMPT
>   Hardware name: Dell Inc. XPS 13 9345/05H2K4, BIOS 2.11.0 09/21/2025
>   Workqueue: events_unbound deferred_probe_work_func

Yeah I noticed that myself, thanks for posting.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
