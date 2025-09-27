Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0F1ECAC5B0
	for <linux-phy@archiver.kernel.org>; Sat, 27 Sep 2025 12:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OHpwqDz9jBjaZs7mPhXllGXcs4y5ZUE+jJDCPXmQa34=; b=r3L70exMDSqVp5
	At3EuXHqp0vTyKUO1c/4qACTP8ReNlypO2kJSCTfnJt4KwRH0ahFMLZNCXzShCVpVRrCdbuOLL8/k
	+vMqjGDPuq8nRS979i12FZ+uOZhbYBDnmEalDYZQqRez90eoOwBuuZX5QMY35rFZR9R1GEnsaXTB3
	NzA3WIejJDcMCwCG0ZOibwWepOwxTY/uNXibpJI/bn1vITIGpcmu8nb45PcK0wjzRcqIH8H2crZWb
	NWzX9fVv2uD1qns6x07ikattk24vIVbuv3Ipqqy8FtwaYzjXYfcMKrmVQyjefaJYvZZRP+GEbEH9Z
	FrImM5MtQGqkcL/W/YWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2Tzy-00000009eyY-3GhU;
	Sat, 27 Sep 2025 12:25:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2Tzw-00000009ewj-1v8c
	for linux-phy@lists.infradead.org;
	Sat, 27 Sep 2025 12:25:57 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58R3Z27K025414
	for <linux-phy@lists.infradead.org>; Sat, 27 Sep 2025 12:25:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8HTZrkSYrqPPOE5aWwuZ/eo7FP1KIcHRJKoII1rHuug=; b=LtAHyxdAoERLVHjZ
	JbX115ejTnojvTKRZuUdPj0fYaO0C0eczNiv43mvnGuxSSJNaGnD1UyGLqOKGQZw
	G6Z8Q4wwd2Ef0gn5ZI/RYEX6KCE9ujwfgSiAauKN4FHhV1deKSpo5TxFND3UzPZe
	a/m22yMSkF1Y95uwOT82TntEsXDs0FDo4A7UtkQSo4Ffb/RAhRoAxf7UpC+Hejn9
	dBDqQ5oUq1zp2UGyeq8b/pdQaPlJDwifMdhRvfRmyj2zjLLzCq/bEqDqvYgL58gh
	0cxqGGcLeSDfy3a2BnH23sP6+bZyfHJCaPBgeMZiMsF9R+KK8+uRnuMOnBeresZY
	FVLe+A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8518qg0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 27 Sep 2025 12:25:54 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-85696c12803so133985585a.2
        for <linux-phy@lists.infradead.org>; Sat, 27 Sep 2025 05:25:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758975953; x=1759580753;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8HTZrkSYrqPPOE5aWwuZ/eo7FP1KIcHRJKoII1rHuug=;
        b=iO/2E2KfUv6VAffr4MpkIuPGZvJWaPKk/9RYibTCUvVP1GRfHN+agcKQJKbYxNfyye
         g9aJuKc+Xw+KPRiFiOfnoM5MvLrdEHUJBsBwqTWY7hF+Ygpy5UlspfEO+SbwABgebq2g
         fFl8Nxs0I7XiBaxHdu3G+QO+RroyccC0jsakcPKUXZfORgBTrKo5lJaB8hA+9/XkSBHe
         ssCattc6bjdXeXs+n+2oHrNu3YXkpVDrWhMaVLTRrqPNh7/thfSDYN6ciwdLET7M7pkm
         LmwJSJ7MscBGZqVbAoMPGq/oCEw090O3fRiAuqbBioz6FC4zk4J4R3i7m5PNPymAsdWS
         3k0g==
X-Forwarded-Encrypted: i=1; AJvYcCUT0Eoj8isJzEYjts+ypo0GuUm9tUDh/vEpEo64MGv1kXaxtTgBL8qGyJq7dBnlPiH10hgDBv4V7Ds=@lists.infradead.org
X-Gm-Message-State: AOJu0YxEiOC9RH5gL1tegJlOP7XAS8ONXLm65/+LXrlpwZdhoi0XurKd
	g91qYf2tTAp7+jiu44z+hQxFCmn4R/HlGrdq2ljDbqpvjq/+KJTsU3COruAnF3y66niLaSmb4Vx
	O/jOe98Dtwn1hBRnv3jwVDORwO5bdLFzACSiL5CWf8FY+GVlp+2yCbknhYqRENcIgo8ko
X-Gm-Gg: ASbGncsXbm/P9fn3EH5vs9KNmex8WsaV8DOwGctHezg3iHtsZxH2oqzzKSAPTCaPEh6
	5ysmrr42B+G29vP5KzWMiVGYu3vtJdI4trjhUO9aKzPjaxo/SbcOSRmuUQEHU5U1sLuW+T4WJmH
	FGsmmLBx1Ppqwl9w3fGdZI91bqWF7s8G+8HYFdwxRU5+A3I/aSdOHpbSKkMD8XBvnEhbC0dU0Nu
	1ixgG+Cc4IOf7nL3ikf3B1y0HEtDCM+TE6NfzAZH6YqP9WRIcw5tR51N6dIm/B8Vks/0rRtwy2F
	767sFAb6IidbYiL1drVLkfxoJ/otZLCKU6dXJT6aSygAUVp6WcKMoBG1DtXNeZCaL/asUQxDoEa
	nHMSHDDxDpXR9vbBm5SFx3A==
X-Received: by 2002:a05:620a:3182:b0:812:81c6:266c with SMTP id af79cd13be357-85ae6d81db3mr926480185a.9.1758975953016;
        Sat, 27 Sep 2025 05:25:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGCG2e/ZW9GFpuGzcSJqt6X2AuHy0M9fiQ/EEgWD1R6USyO/kkVUy9LiI1L21B8ibFVZJ2N8g==
X-Received: by 2002:a05:620a:3182:b0:812:81c6:266c with SMTP id af79cd13be357-85ae6d81db3mr926475985a.9.1758975952413;
        Sat, 27 Sep 2025 05:25:52 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b353fa65a62sm554412366b.47.2025.09.27.05.25.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Sep 2025 05:25:51 -0700 (PDT)
Message-ID: <7cfa782b-07a5-4f0e-9151-44a42c77badc@oss.qualcomm.com>
Date: Sat, 27 Sep 2025 14:25:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 10/14] phy: qcom: qmp-usbc: Add USB/DP exclude handling
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark
 <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com,
        Dmitry Baryshkov
 <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250926-add-displayport-support-for-qcs615-platform-v7-0-dc5edaac6c2b@oss.qualcomm.com>
 <20250926-add-displayport-support-for-qcs615-platform-v7-10-dc5edaac6c2b@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250926-add-displayport-support-for-qcs615-platform-v7-10-dc5edaac6c2b@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=OJoqHCaB c=1 sm=1 tr=0 ts=68d7d7d2 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=7a1U2GcbA96CJLvzQ6EA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzMiBTYWx0ZWRfX1N4tO7fRkX06
 UOV20rkJa1aR6OL0Aqy3sdXfl6FR9x/09ocR0i49pwD0NdpOM3GsAg35nFxHrnbaj1UipGFjfYa
 16jPG4eOvvbaVqFhUF+B1QH/9lbR8zIsmxddJ9rFoey/2LfKxQI42XSmjCdGCiTgs7kvOurXpZj
 Cp9cNg+dXyExv/59OdctP/AsOOQxv/mkfJ9Yah/dhhOv8j7lvOa+gNrSi/DfnN9DJkhVZtl/JCr
 RRifdyTrMGf8x/vRjB5+oKMjlVMGTaOs50igMjoq4zSoYL6IoYnL3YG1TzJjvOPJKj24K0aL4VP
 IWBS9s4nXhfl6qO73ySiccMGBzsDzg38GgV5cAMRY940z+/bdd1tlnA5e/rAkrdRDArBJWovLBX
 cJSuz4cOySeqQozoMWSUb7OM0beVEQ==
X-Proofpoint-ORIG-GUID: irP4aC6aa305xsSGyspkhvlkqniXdXkN
X-Proofpoint-GUID: irP4aC6aa305xsSGyspkhvlkqniXdXkN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-27_03,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 bulkscore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250927_052556_504084_45DA490E 
X-CRM114-Status: GOOD (  11.20  )
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

On 9/26/25 9:25 AM, Xiangxu Yin wrote:
> When both USB and DP PHY modes are enabled simultaneously on the same
> QMP USBC PHY, it can lead to hardware misconfiguration and undefined
> behavior. This happens because the PHY resources are not designed to
> operate in both modes at the same time.
> 
> To prevent this, introduce a mutual exclusion check between USB and DP
> PHY modes.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
