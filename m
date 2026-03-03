Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3BC1E67A62
	for <linux-phy@archiver.kernel.org>; Tue,  3 Mar 2026 14:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=36eNQzXSMxXSeFqI69Ulhtdtua7tqSzmtMmlLTwGqpw=; b=Zj/QrKLq+vPTCM
	nvcAxiXtFiODIjm3YtSL8ugjA2Ftvtd0SpoXaNV3R8k/jOKq5tZ+Ve6pB6VzaszuEeEF560zFphii
	n/UXGma9PjFU7QyRnH0k1b6U2FKBxipZ1vYRHSNJlkpuudQUaEt8JlrpSIOmSWfAVk7F3+m4jqCdV
	MgXcLPO//bhL+TEcp/hTen2CeHpFL/i6NTscYH+WUvnnUOq4b8X12UYPB1dJ7I/qSNCt0ER3CxXg7
	Esclbz7MNI+P2AHi+K4S31GgTrqx/NEoNzj9wzFtUvgq6OgDCVzkNsvzuK3i8ZBofA8R5mHWgS8lr
	YgC4TX54N8bCkKIxEWrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxRAI-0000000FMXb-1PhV;
	Tue, 03 Mar 2026 14:56:02 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxRAF-0000000FMX4-13jp
	for linux-phy@lists.infradead.org;
	Tue, 03 Mar 2026 14:56:01 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4806f3fc50bso61563155e9.0
        for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 06:55:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772549757; x=1773154557; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S+MDG+fHqbczardpdRalYE3e5+KsIfu23xnB/cF6drI=;
        b=Ii3qXlUDaMg8+oQ2yU9kfUNSJ/tCZ1LMgn/FuMi5JDmu7SXXs+gcPQrg/VN5Idl8v+
         8ze4NPxuI7/ljQkuTQwyf4kBSAte4p6XmkRxVXg6cD/wOeU6R7AsTqoIwgIlispnesXf
         FuBJ1lAes7l+Htf1+nZiPF4RhsewELBXMCsqO/zpJ1d6yWVipoKg9LCOnvxLAV4YpZ87
         Jwf/QShs6kIUQQDSVY0haIsQqTXdt6jGwoVtfjvBWzUUaIbSshf3ONr3rr9PGhIfRgHX
         YZ926Jv0cpkAMDHcde4LMnwANLexs/IYbzAFpx/Pw/u6V7FpAyFBUA10hr5ofY+3hLRG
         9SDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772549757; x=1773154557;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S+MDG+fHqbczardpdRalYE3e5+KsIfu23xnB/cF6drI=;
        b=EPvTVUNh1LHI6l1qe2D9f9wwZ7MFuVj79UhmuyIQsohrhUNbALLWs6SN0DoDKVgePm
         L1Ac1+MZtZGTinJfGEmfxgwxVHSgqfLfvcs9N4qn4Kka+YjaQxigI7H4djCPz0O1wboX
         TM4DMNh8ZNZNVAAqnNGq/t8M1X+Atk+HYGWZ+ZlfSbct4IkLoUJlZuFtGQp4WC3X55GF
         TFOpERL+RdtAsodSg5cj9wMJQ4ugd5CKXNDPyYYShUntByoSOOPT4aA+19U19O4r2PMD
         yJOKNW75PdwJwzdowVWVTpNcHKL1iyM62W8UoKvV5vvldDo/upLzgnoYb02fI/PXSpXi
         pqkg==
X-Forwarded-Encrypted: i=1; AJvYcCU8iQgY8VoMrxzR4rF008FidRZTZigRjJrQ+U1+8cwUx2bOxP2spSGZB/fVJcIw974J2PbFGtRAuIw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwIZGboEMmP/7YUGhYw5Md2CjlHu+dh+0b+VkegPwr1g7fZUsIA
	W9ei2t6s8wthVKd4/AveS7ehamshqa32Crbo+NjJOzoqgVsQSgjd72m2C1u6Ef68kug=
X-Gm-Gg: ATEYQzxQACH4YIXhACPkDrEeU8Tb3kK9yTVAvp7/P5qXcxc3sVOJQqZ3ElcWW7PBIaC
	EKtv8+7qaZyYOzKL0/DbQ0P5wHzuYY8C3H6uvP4EYebKxuruCQNH3huCAculc2277VdxQ4HTTWN
	VPpC2W8sbacg9ttD+xnuQ1/xx0ftAPSYSd77//6+h0hJ/31aAmIG69nCvjiqyLjJ6VrP0uZSKa4
	ZQf0VS+knIPCHa71CZw2EEUGvjeuOM6IPK0IE/UbumPG6iez2CqrY5kFUGP/2+JPKrX0XVuuCC6
	gjglJgbRjFbekNn34Eibe56bnYpMR/6OVf84iFjJVzygKn7iCmfRXfCHp3E99A0R6FNtbbIC6Sb
	OB6SDLFUzmXcJf0cwKT62oiM6KOIzELqwmsPXesSkU1XpMmN95HFllcgas8efGGkXwwvL9BSIp8
	8jn1VoX0k+/p8bKIv8AQiLuGDZrFK7cqdOjPdYTq0TnRID0KNN87qo8O+Rkv0GiZa6SlYJyT5TO
	J8=
X-Received: by 2002:a05:600c:46d5:b0:483:5310:dc67 with SMTP id 5b1f17b1804b1-483c9bbbe77mr264243655e9.20.1772549756678;
        Tue, 03 Mar 2026 06:55:56 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd6f3124sm482928495e9.1.2026.03.03.06.55.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 06:55:56 -0800 (PST)
Message-ID: <1082062b-87a7-4254-b5e7-2dc3769a619f@linaro.org>
Date: Tue, 3 Mar 2026 14:56:08 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@nxsw.ie>, Bryan O'Donoghue <bod@kernel.org>,
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260226-x1e-csi2-phy-v3-0-11e608759410@linaro.org>
 <20260226-x1e-csi2-phy-v3-1-11e608759410@linaro.org>
 <c85fe457-c140-441c-93ed-342dce32e604@oss.qualcomm.com>
 <676e2a9f-d274-40fa-988f-e9388ba40f71@nxsw.ie>
 <04f22394-2dbb-4b7b-bce3-9b41ebfb7709@oss.qualcomm.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <04f22394-2dbb-4b7b-bce3-9b41ebfb7709@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_065559_313059_5A4650D4 
X-CRM114-Status: UNSURE (   8.91  )
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

On 03/03/2026 12:34, Konrad Dybcio wrote:
> That depends on the use case.
> 
> MXA is always-on (that's the 'A' in the name, as opposed to 'C'
> for 'Collapsible'), but it's not always at the required performance
> state (svs, nom, etc.). For some clock controllers specifically, there
> is no need to put them into the picture, as the rail may be unconnected
> altogether, or only used for some retention mechanisms (which only
> require the rail to be enabled and nothing more)

Does this rail have an OPP table you can share ?

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
