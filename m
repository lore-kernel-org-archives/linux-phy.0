Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB134CA9EC9
	for <linux-phy@archiver.kernel.org>; Sun, 11 Oct 2026 08:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IE+hvnkrs4zEK6i0a2UAzcIEyYyiEObFHQe/1aUIIYY=; b=VCV5ampjrJvbGj
	7bxaTjJHlf9s0KkLZ7oiS2XLgRFQKjQJhExdGta5ZHe+PUmWbXIk0003d7AXimpAx5NQ5Tew4OmNR
	Ki3KmtUCL4p6gJlQQhR78uGdBYfEW42Ttsb8Z+6GSqf8Uc1fo5eAg2I5cexmQeLdtvWR6weB9WChx
	e3nzN+HwiZSW0pFP0FoAv9+jyOTKbaDRyPkmms3Om8ziV31okbnmUyIzgkUvkSKL+4Z7kxcE4m2yu
	ogguF+x1f4JtduMsOib0qNJ8E6Sl/SGvF+Qm3ZfiKpoud4fU7PlueoJ4QNVmT4WEEn5PY50Rs+sTr
	kIAsQtSPpxm7yCtujiZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFpMC-00000008sTS-0P3H;
	Sun, 11 Oct 2026 08:56:36 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFpM9-00000008sT6-23Pd
	for linux-phy@lists.infradead.org;
	Sun, 11 Oct 2026 08:56:34 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-c263415982eso119496066b.0
        for <linux-phy@lists.infradead.org>; Sun, 11 Oct 2026 01:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1791708991; x=1792313791; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=dKOqZxKxSOHNw25+e85CqVx4B1361RF8kK92P+D5pVQ=;
        b=jzDCPRpBHOtkmW9RmZnNPCNJiTmEtYbJqFbBhqy7ujZN07Ge8Vz4AfHR3twoIY+o6H
         QI43sWeXYpRzhv2DXWgUs2hFVNknPL9p/2qjqM+lc4z3vXx1LSV5fjNvxy+HgMK4oqo+
         BYbrIagxjJRgwsMyULRuiZGe4oRIv+WqlVsWaNMoEuF456Zw47E0P3CfnYhada5DgQqk
         0Ik0VexSbqe+BSIcf/fnM7ItUSjfQMzJEQzBpsbOGjYh57HVVMj6lAAVSLoAYPm7nRhF
         B5PoAMLp3ZeqhXP/dGCbWZOj81Um3I8DDzO3ljZTTS8NqL6DQqIseuFyrWTb2V3VYG1U
         d9OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791708991; x=1792313791;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=dKOqZxKxSOHNw25+e85CqVx4B1361RF8kK92P+D5pVQ=;
        b=CXHB/9fC1abk1rPVqv9fDnTO/oozmE/DDVQwXMWLfgEYuMMubleYzz9Qb59U0V1vTD
         rbzuPiMAOfbAJ9Efd9LfhaGn08bmpglVw8x4mgvN1cG4mFBgBX1OPn9u+9VNZVWrXGQd
         4Cq7uh3gDX4VftiwZwPVBgsi0pKzx5l0VAFHSwoyKYV3AjJebosukKI9nfyKQ7tEP9tJ
         lJJgtNrXeOmqexIlIf57FMkgumwMpqKgzkvBRbD6ZYfJW/59+uKmsBm3uXsmSRA4S8UG
         gRRbGM2kUEmVd/EjdMfZx71cPVdgHI+Reb7ssVEl+bUAtQmqp0j+zgIUzI8I/Q+NGs5/
         2HNg==
X-Gm-Message-State: AFq9FYIMoAW+5yuVeLHuhAN2ZAi3e4uDR+6ftsmLXCjuSYFspylyXdxx
	IllckbJdGrrAZ82TjX7FMLdJEFelQ5NOeGwOHN3r0lRduhKWojhtMbFDzOVB/2Pc3dE=
X-Gm-Gg: AYBFou3jtwXvfS9YQvZwGG72jVs6ra1LnbETMdmcrDeIZWmZ29neipPIJAQOKzRT2iM
	6Zz59+3Q0zMPk+EwWAaoyhHPiDl21aA24mWTc78J/j0j9IPWU5SuDj/yK/Yv1gGhFesAf6rER2k
	LklTSaU+FZ6MvJqyVoJxaMT5iUCZXm2Zf5GKmUJ+iJ5YSTTXipMAEmxiDMqjCMeDwDlhtBn86IR
	YXRax87EwnXscp8y98mKdpmasTTRBwVhYd9hx1OLhG2cTcOacOFyeMPBV7PtCy/7KrB5a4hCHvq
	TSE9PGBktwsYlkLb/1e+CMWwC36uUU/JS0nHo1HDumcns3nasqsZyhjFaFxMSIPS0aaY6m4Wk5q
	HLf4y07e9ixxuaJxvFVWqzub9+DHQMvz4pKJz+zTt2ejSBc+XgoLI2K3CN85/rNeBx7Wrl/t1BL
	C6rQJBwWAugL5vnlBiS98PMWomq+4P4kyDqPrHPkbVRwfQmTLSFmix+rgh1957MWSckoXhYOnsk
	unChY5AYUUx
X-Received: by 2002:a17:907:940b:b0:c2a:ef15:2be0 with SMTP id a640c23a62f3a-c31a9ffee01mr693409466b.24.1791708991035;
        Sun, 11 Oct 2026 01:56:31 -0700 (PDT)
Received: from [192.168.0.167] ([109.76.165.237])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c31a9ae59f9sm334413466b.80.2026.10.11.01.56.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Oct 2026 01:56:30 -0700 (PDT)
Message-ID: <a6e5dc34-c2e7-4a3c-a0e4-fb0a3a28cece@linaro.org>
Date: Sun, 11 Oct 2026 09:56:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v20 08/13] media: qcom: camss: vfe: Add support for VFE
 1080
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
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
 Atiya Kailany <atiya.kailany@oss.qualcomm.com>
References: <20261010-kaanapali-camss-v20-0-63e98ce9ac0c@oss.qualcomm.com>
 <20261010-kaanapali-camss-v20-8-63e98ce9ac0c@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20261010-kaanapali-camss-v20-8-63e98ce9ac0c@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261011_015633_552940_7E880278 
X-CRM114-Status: UNSURE (   7.50  )
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

On 10/10/2026 17:01, Hangxiang Ma wrote:
> +		if (!vfe->res->reg_update_after_csid_config)
> +			ops->reg_update(vfe, line->id);

So I'd prefer to have a discussion about if we can move all of the 
updates to one method.

i.e. why should any of the updates happen before csid ?

Sure vfe 1080's documentation makes some sort of explicit statement 
about an update that has been implied for some time.

My question is why not gate all of the updates this way and make this 
not a flag but a global behaviour ?

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
