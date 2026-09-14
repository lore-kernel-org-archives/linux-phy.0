Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B5EEC88E50
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 08:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RtkTctnhMJILnCeQhu+Ux1Si+JlrB5qvCAWGrwWuVL0=; b=MuLTujZSKbcsnJ
	7psuHmsitvIGcL48qiU8aqGNbUbioYUOXWyupdix2XduqLCMi8adelvsCVcE+WCtQ4fQebMy5ZBwU
	bOCX4KxZC0bciAnZ2oaChLJ5JzDwkKZo+cD23H4K1dj2RT3YXwduF50AYV8XztdV9pL4bnNEdrvwk
	aYFl4oIck+HKuL/lHqdqQGBnUnpYZq+pA5oGuC7cobxzGefbVjM42l0HXlmLFM+sk2r4Ey9nIPBxL
	UOlEaDMJLZUWkeDRuV+R30uGnyyQab5VgGJ59fjzY926A3uxbtQ819WPyzrJDEa58KQydBQ0v2qwM
	7Dyyha8svpq6WH4lWdEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x61hb-00000002evN-18Vi;
	Mon, 14 Sep 2026 08:06:11 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x61hY-00000002eu9-3A10
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 08:06:09 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68E5jUTx3842872
	for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 08:06:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	W0XjNnKxrhdkJEO1lOyERnjUwOJSfzdDQ+y6uKaxrfQ=; b=SAqur3NJjAHajSPz
	p71yL37AMtj7uRBHbsiM4yYkQgW26WJdrDHYpDLv/j7qZ20ul5WIE3ANCKxg5bl2
	pPSN0Bqdgo8Kyrk8uMEFIhqdPgAIT4uIYBLgnrvmo9cjmjO0fgR68gEj9d6IxRHj
	LH1AkNcOH3X3UygpIymjPAbl1DbsW2GwepQFj5hWY00HOIJCa1d3imAPPt5VnfHC
	c3JDmJE18TwZkMlPeXpmxHE/wZxsfSQzXbR1OMlitglBKBvW3of1qeGqjbHgYWlr
	wLHsPLoEJlUSMtu7AFwX9pYgF/gI78hLk9lpUxGfvDOYZ6BVn4Ig5CKrA6fHmQsa
	liGQEQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmy9c5ngt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 08:06:06 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-530a0a18108so9557891cf.1
        for <linux-phy@lists.infradead.org>; Mon, 14 Sep 2026 01:06:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789373165; x=1789977965; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=W0XjNnKxrhdkJEO1lOyERnjUwOJSfzdDQ+y6uKaxrfQ=;
        b=L/ko6hU+3KDI9qhVzw/zPNCw4GLpKt8zMzLcZaq2agavWYxotnqMYGd4UowOAV/F9R
         qP971mBegEF1Lz7+19IHF4PboOyg5nFGU4mcfE+CF8rMnnf9PZPvdjtjYCet1cuZELi/
         wW3wPj2ZB6QQhKJ29wVJga7hFgWyf3CCOCW8aF3n1+ZJlRiZtNf9mmBqOk3tmgri+V9O
         ZBVlWjmJ8BBsNyAkz/Y8Ay99io6Dnm5rQ/H5lumn4ZitZSGvF8GoODgTfb4TycLU+ArG
         /0yjM++kKSv2z+IHPpYZlzU+p4GhTcNoBxxkGzI8FSgQrV4nkFkoDZSA2nICDz3JbGsV
         nm5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789373165; x=1789977965;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=W0XjNnKxrhdkJEO1lOyERnjUwOJSfzdDQ+y6uKaxrfQ=;
        b=AveXKOTDLRQ4HPN/Ulg1ms43lWFhqKnAq2YfaDABuZ44dsRswvxYsltmmxG789Wx65
         VON7XwYomamdKBK4tyMu0OVx6LsexPMfRjHx0QHEgpQNMQ6BTMltGrdTxC+6EOjCAUPV
         nkod9Jblhnji+0l+k66lR6UXYCtNkf4+dsrQvdHLuS0U5w+1WNn2Z6xj817v1b7LrfJ9
         krvgqAeOwMQ5cXZ59BS4HyO/iTbuD0/jA1vgwuLlSnRZYZLLrirsJPhKZ6hKwJaa36/M
         ysDjjSce4KVej1v+3B5bXONAuOUVWwulI1Sbt2ObvFZ1gw9Go2vekqBOw2xz3XAcAoXQ
         0bOQ==
X-Forwarded-Encrypted: i=1; AKwUvBzEzYh0Nr2GJvWY7wcJ4+BdQAW1xR0/JBP3iFOIB2OzraG6u1yMpw5WnJYyrwSZUCXT927+T/SQJMw=@lists.infradead.org
X-Gm-Message-State: AFuF++l4PtK7+ewq5qdnXh2PxvCqbT8MSmZLTLBzlx4jf4iEqB05RQBG
	Dc4fzM1ijDXxQ++KvI5pCeZot9a2DMyXo+3SIsNmPrXitatAJXG1QZfqORuFpDcBLswlhHUMdmK
	4TVurmUXEFkuyRXNE+gPJVwg4qrNCnPalV65+5YYtuspJXowvl4Ir32DtSl3YjSn3oOeU
X-Gm-Gg: AYBFou2806yXh/ToInXK6fjxzDvapWXWyFVzTaaG4DHWWYuxbGkK5/tez4OMOCDR3bk
	vzRUB1gLhRzH3ujbuQ0mYdLAuVLDtRRwUrM4yuUhU2G1UNf0hcK2Bt5q5BUeH3yyV9l0+8yw6GJ
	8sdd3tQNzqNTb/Ac2fkREgmJD+59ZuYzOrttAz+WyHa/xKPDus0EAUt86q6uEA0XcnLxMS5h1go
	W4sH0K8LgyMLI3eYsMMEcWjgBsKrN4UfF529zQ0eHO63ACUMiDCMpRkMeDwkoMmLYyOT3ESxrhO
	lCBFLXjCYVyYo1adXCimbN7AxVctpSdbsEaRqKiKwn8kwVwkj8ksrrFwk+KsP+f3fEMfLftapm+
	OluCl3eueW4iLSJ8U1cAfzg==
X-Received: by 2002:a05:6214:4307:b0:912:1333:e04f with SMTP id 6a1803df08f44-9122e149532mr19325876d6.0.1789373165572;
        Mon, 14 Sep 2026 01:06:05 -0700 (PDT)
X-Received: by 2002:a05:6214:4307:b0:912:1333:e04f with SMTP id 6a1803df08f44-9122e149532mr19325476d6.0.1789373165021;
        Mon, 14 Sep 2026 01:06:05 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a9b5831187sm3844483a12.1.2026.09.14.01.06.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2026 01:06:04 -0700 (PDT)
Message-ID: <126833f7-236a-4338-ba24-e4c56155c71d@oss.qualcomm.com>
Date: Mon, 14 Sep 2026 10:06:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/17] drm/msm/dpu: Add support for DPU 12.1 on Nord
To: Nabige Aala <nabige.aala@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-4-e25c073cf1b6@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260911-nord-drv-dt-v1-4-e25c073cf1b6@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: E52hbVhd4h5v66xqjAl7tL6gU8-nZxp9
X-Proofpoint-GUID: E52hbVhd4h5v66xqjAl7tL6gU8-nZxp9
X-Authority-Analysis: v=2.4 cv=c5Y+0h9l c=1 sm=1 tr=0 ts=6aa7aaee cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=tJERSlHITJMJguJ_9RQA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE0MDExNCBTYWx0ZWRfX9aYCoT2S2SK0
 tNuFssPEn7fZTZvh8n8B0uCQMYw+ncWRShaBX+XCWWivNGU+p4jawQ8cGOSM4xt3UIE5O9pgYW8
 JqqmL4jqdn1BhpWOtFqbCYL4v9sd1oO30naM7D62vyDGBhI9KfKNC0yVGWuv52Mv8KhDz6Z8L52
 9A5Q8GCZ3nJNjOAB+EVTyQvWZynKjMrEA2NOpDZ9d26ld7XfWbK42hmlXrxv8Wk32mI9BtGPiUV
 /Y9wGqgaV5skTWMLSkM7BO7FEiEe+5yGBSLD9vYYXdsFBAUwQDQqyqABHBKQFSt51jZ3O9YKFo+
 20slxeu7QXzqpsRzaV4R8IuIQ7vTpp/HzrGSKcGrvNdkEw8o0KVh1+qtD/FK8qyQau68S2wJ+GO
 wu5L28ByHQ8YXLRcrGwmyTFrLdFdlefsswerdVna8YbMVtem5vR3jnDrAzwTl7862k29owpTdI2
 gtfGdrGdD+K/5mifmBg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE0MDExNCBTYWx0ZWRfX3YbrEXdtxjxg
 70F1BqPmia3DG00IKNkAJ/5xigpWihfZGNzmDpL4uFUj6/xPzINdncf5nYlTKVWIjTpgaQZgDJt
 2ECQN+m9QGibmiqT6h9S7MTwzJfPQvI=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-14_02,2026-09-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 impostorscore=0 suspectscore=0 malwarescore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609140114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260914_010608_916676_5A68AE22 
X-CRM114-Status: GOOD (  12.98  )
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

On 9/11/26 5:36 PM, Nabige Aala wrote:
> From: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> 
> Add the DPU catalog entry for the Qualcomm Nord SoC (MDSS 12.1, DPU
> 1499A). Nord is DP-only with no DSI, and provides 8 DSPP blocks, 2
> writeback blocks, 8 interfaces and 2 DP controllers.
> 
> Extend enum dpu_intf with INTF_9 and INTF_10, which Nord is the first
> platform to use.
> 
> Note: register addresses and xin_id values in the catalog are borrowed
> from sm8750 and precedent platforms and are marked with FIXME(REG_ADDR)
> and FIXME(XIU_MAP); they need verification against a real Nord register
> map before production use.
> 
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---

Please remember to mark AI-assisted contributions as such, if
that was the case..

Documentation/process/coding-assistants.rst
Documentation/process/submitting-patches.rst

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
