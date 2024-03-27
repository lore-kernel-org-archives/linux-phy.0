Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D480BC54E67
	for <linux-phy@archiver.kernel.org>; Wed, 27 Mar 2024 21:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MkTSMF/c1AH/9fHBMXQ/RBc0Fhsvuow4nt2UN+rB0P4=; b=HzLZN2tSYA257L
	MifyG/EoAs4domLKiv0fLKYtCCqmhm0ZXYYRE0s/25U5KenSEz6hvxNfKItRXq863rR5difxq879z
	FsyM6M1zKfZHEHaRjTnI89jI9J5RtzUbGLBF5ZBc9TbM/GrbTBaQpqZSB3dU02J1G2qQUEL8/7tQK
	nN8KcZ6E9YoTQjEZNW1NoRcpL5TXB/sBRox25agzPz1t6O9ouICdK6plazCMH63PSz80gt82ENQPt
	yF4eQ0vgV/6fi5Cat33G0qEWXBnEsnGwl0E9OkH1mtlnVSLIZiG3i6voAct0nWgW5HtMcOy7joFYD
	PnfOw/7TpfS0K8mw28RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpazE-0000000BG0O-2Ktw;
	Wed, 27 Mar 2024 21:39:08 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpazC-0000000BFzd-1rK6
	for linux-phy@lists.infradead.org;
	Wed, 27 Mar 2024 21:39:08 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-513d3746950so268159e87.1
        for <linux-phy@lists.infradead.org>; Wed, 27 Mar 2024 14:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711575542; x=1712180342; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=QZUBkdVY61Xlb2cgTE2nmUubLiWvg04+qp2XWqnm/Mc=;
        b=d92bColtDys17oWJeSiIoOqtfzo0q9MVsi6mI6vHfaTgHeOZs4JyEMlfflSsd88izK
         1PACZw98CJuzWl0w2bFkEvYe/fI7oqFUA2zsM4w55SlPA5zDcxnmsC6QBLK126IPj18x
         QcOmAql+V5H7JzZDitlZhyCdQce8UeqaFaa4ZB7CbPTqmvumzLxwWgSPqc1j3wulASut
         INF7SCGMuyrMUX+e9PGiBICt048scK+sx6ImRJxXjHg1fzRCA/f6htMRXASHurI86bnY
         siMNLM30cpD0w8tNw6iwfxvcME9UIHpMXV1bs8WVIedyIv2a4HHSZm1EA9jwp7Thrb1a
         qO7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711575542; x=1712180342;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QZUBkdVY61Xlb2cgTE2nmUubLiWvg04+qp2XWqnm/Mc=;
        b=jgNLQAsQ7bJ/vQkuXuX3RuqBcCcFm+1oIJ7REWYEJboSp+kwFsJtwx2VsBSRfvAXrt
         btpSBxafHC7hLPfj2CWzRIGVksLxnfuQybpzCIoriyV2SY3d5/QxJl1YqjqtgyCETums
         U51rtSG741XZit7KcgJIjbKEC8dNp8+KEpMEKSnfr3bmZJ4I+re/kbY38AMtdhtI3nf9
         0iN7P0ak/7VOga5axRAORj23sSSzN9jRlpOEIDHRb1XsqB5dOJWObetjqwYF+Wl7C91O
         6BXdDkXQTyKRMuTXIFi9TlvjZc0ahuIEHzrCE3VGn2vSk1/Q++OXIPLSf20jCS2YksGp
         bQVA==
X-Forwarded-Encrypted: i=1; AJvYcCX1jjKDZAA1oLqietCFRkydk0jDm+ttwZ/63EqI3DJ1Ez+H16O0UYgOs8j98jYGnd8f4pxtpGEcjxBhSBRsTkHTOb6erg58cowOGCkmYg==
X-Gm-Message-State: AOJu0YxdHTDhbzgTzzNv5WIZGmPQGEiOXtThz5saB17h+VyGXKM1sBaY
	5IH6sLGZNGWIVF+yXhbiomoIaVw88OcZhckOyqIzLmiUMe3wCy/syHxlSk2w8+g=
X-Google-Smtp-Source: AGHT+IHaoxkChZu/+Jt0Xrh4sJcV8X/QAzL8iuwzT7IqFsgZ0w8MskfrrQ4N0RuTGIQCbnsSSIbwnQ==
X-Received: by 2002:a05:6512:535:b0:513:e934:8e34 with SMTP id o21-20020a056512053500b00513e9348e34mr491448lfc.56.1711575541912;
        Wed, 27 Mar 2024 14:39:01 -0700 (PDT)
Received: from [192.168.92.47] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id ci8-20020a170907266800b00a4e1aa345f6sm70245ejc.115.2024.03.27.14.39.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Mar 2024 14:39:01 -0700 (PDT)
Message-ID: <afcbb668-ab9e-4f97-9014-ecbd5170ab92@linaro.org>
Date: Wed, 27 Mar 2024 22:38:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom-qmp-ufs: Add SM8475 support
To: Danila Tikhonov <danila@jiaxyga.com>, andersson@kernel.org,
 vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240327180642.20146-1-danila@jiaxyga.com>
 <20240327180642.20146-3-danila@jiaxyga.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240327180642.20146-3-danila@jiaxyga.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_143906_521966_02858ED0 
X-CRM114-Status: UNSURE (   6.22  )
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

On 27.03.2024 7:06 PM, Danila Tikhonov wrote:
> Add the tables and constants for init sequences for UFS QMP phy found in
> SM8475 SoC.
> 
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> ---

Worth mentioning that SM8475 is a respin of SM8450 on a different
process node, which probably forced some electrical changes.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
