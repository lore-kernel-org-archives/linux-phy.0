Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7995ECA9ED2
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 08:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e207JOt5dD7gld/NXsOoli9uHlV5zVA1wJQUitD602Y=; b=MARUJR2NG+wExl
	iOHto1WLj/dzcMgYWlyxRn7tQH3ZprPEl5In1bAN+QrqyDcKziCQbo62DdP1t60UruerGFC7ODxkP
	rUGJWH9Tu0LoPrXh8dBub7jcFsKXLmt4LIfCN19x5s6H5i/QeYUCAyxLm0xflVy03WGmBRusn0OOw
	yvOu7HdJcDfPSSEP0mNwfpxBPEKlJ464DN+EagzIFTH/jFX7BLwJpH1m6fey0b/BZc0uvf18CaJed
	z2u12uN0LoAuG0yF9XJGW5/Ch5bCdDr9n6GDGxW3/wK+SYFysJCJS0wqDLLbh8+aZlgIXgCWJ+Kny
	GpxkdhtqOgEN+mWM2wVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGY7p-0000000CMaW-0nWG;
	Tue, 13 Oct 2026 08:44:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGY7k-0000000CMZW-3jBU
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 08:44:43 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69D8RDBv4071819
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 08:44:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=faK0bJ0sX0dcSnwboayq3MHZ
	Icr4uJu+BKG/etclmFg=; b=caCpwNn8oseMurXZLBRWMTz+TrmZik63MloQIBVZ
	V0h4K9VIGhkoKvsbacEkmw7TJ1RkBwE9tQ6rrlzbJte9vYAS3WFF8ufNY8rFH7zj
	MoaOQUTo6j5yAcaDh4HGM3IKZTbaBbCKmvAJjwbIk5R6JxnXy8VH9C2DB+mSTU10
	NBZ31VUZGd9PGL2Bhl59k3CPWx1hL4xep3M7aEhbJ8OObdNYAbHJVZtJH43tT+Fr
	TQ/TKZWW/lOsLgK4PVOOM0UtI+a/mGrAnfSuKWJ6KU5mFm0D41FScpZLgpA6Jsi2
	GR9ISiy+w5ZPeXUPuNj7ZYpV2pxDfYPBUQ3oo2TsZwMJVQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h92jjukk4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 08:44:39 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-9308eafb465so759157085a.2
        for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 01:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791881079; x=1792485879; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=faK0bJ0sX0dcSnwboayq3MHZIcr4uJu+BKG/etclmFg=;
        b=JFNEL1YgX7BivyJlIqqCLjwS7MpgLG0EwZPNtnbHxzvVn0OUqaZyYg8Qlba9r2eGFb
         v8F74ss7M9zz+A7rfPPEpdxUBSButJRQzrf7lBj6dFhqTvau12AXlWpaWWxyxltgwZJz
         VVhy46ssjVW9UStT/q3lRxaK5rzr+zpCLhAEXIIOTprpQSYJLUYL+nXw9V9GhuafLCy2
         UyqnCOz1313fMM9N0I9FNl293iDWoEcyVCeQZLX9LRV+o6ANWvmjNLEv6F6wj4/cfyz5
         ikoM/GHKXsgeBBaCweOCh85noF828WoJ5g8FEkTbT7Ha+FpKsimWu9ZZpwcQjxkPYMdn
         RW7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791881079; x=1792485879;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=faK0bJ0sX0dcSnwboayq3MHZIcr4uJu+BKG/etclmFg=;
        b=YFYX6hRPnWdQdx+Lu4oCYq4WdeY1pRcLBnSgChjMCN+A7iq03a8Ys6DJHtx7VGyEmd
         7D7rU7zJoTEk4Cu6ypDpgvMP+Url68S+k07Mj+cDD2NM65Yy9duciXYwNv46I83FdnG6
         24DX2LfUvQkNqE2eIosvxSiO+fUUcdHo33Odq5jVusGUmvtyFbqQQcl40VigZcGLqqRE
         TM+cr5raCOzXHwU3GRlyphMxw2Qtjgj6E/+IYmLnQTcePgxnmFBK1g3GsIiU5Fif6J/X
         QroAZQVGYHR21JPVikcvjuV9aPnjck/1y9HX/75Apd7oGNv5+2NmT71KG63tCirLHc8t
         SuXw==
X-Forwarded-Encrypted: i=1; AKwUvBw7OIPILIb2NCdCfj/5rKCL+HkTH1w7dhTEyLfo1XF+BOjTcQf0Xx71t++P65HjZnf/5nAwU9BKgZw=@lists.infradead.org
X-Gm-Message-State: AFq9FYJmqVgmp3REDTh+DsX0NLs4MxiLOraxVg9SXJl58BTqsr88ZbPx
	/oKt5LPtdnfHOr/hdK7oysuQPti284FR70OQ9k7HcOooHUlm6bUL0BFGUuxh2AiNUxGiRUX3Le5
	LxfimCPoE62oj5aRDo0/OlBjuW3gTa3uFGuR4zDIIwx4GWLpvimBVTpNj5FHA/L52gNE8
X-Gm-Gg: AYBFou3Bf9CFHshV4DSLV9qTeffWQYsvYvyxIAau06h+Aey5J0RmT9xbAgL4t7hJbu/
	ffxncuBZHuKzj+Hqn1J0gx0G1grjzMZjYxeC943uh2D2oSN/0fTgC1w7soRpnXFP4Eszw3WvcqH
	+H9IY06zeWr003pebL+PaMYZMfp9NE/aDYkZLFb657Jp9Xe67TiZfFJuEdTk6C0oPSixwzDLUKU
	Lc3Q8+ckDoZt3gmA5rFdZjiwZryVr+9WHDPYxm3lwwZfDc4IougCJNsBWhXB6joPp/DDvX3CAn1
	JlNIjQXBWH++PdT6Ykrc7lbkyw6eCv5oCjon/1cNBAlBuCb9W1KYRlagdfjz2c4P4Bvvo7y9Yoc
	o2X7Y6KEw9pIzfcY=
X-Received: by 2002:a05:620a:4507:b0:93e:c12c:fbbb with SMTP id af79cd13be357-93ec12d05d1mr1863345585a.72.1791881079173;
        Tue, 13 Oct 2026 01:44:39 -0700 (PDT)
X-Received: by 2002:a05:620a:4507:b0:93e:c12c:fbbb with SMTP id af79cd13be357-93ec12d05d1mr1863342285a.72.1791881078606;
        Tue, 13 Oct 2026 01:44:38 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.170.215])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a18beacd2csm380055145e9.14.2026.10.13.01.44.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2026 01:44:37 -0700 (PDT)
Date: Tue, 13 Oct 2026 11:44:35 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v2 09/13] phy: qcom: edp: Add Nord voltage-swing and
 pre-emphasis tables
Message-ID: <qihez76tvkqvq4axyqmqyig73bdds4cuuxhzzv3smlztu32gje@q3r7o2uuqkw2>
References: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
 <20261012-nord-drv-dt-v2-9-a2ab9af954d2@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261012-nord-drv-dt-v2-9-a2ab9af954d2@oss.qualcomm.com>
X-Proofpoint-GUID: S9H2IM7P14Jge-Iz3r_kRcXHM-sLP-tv
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEzMDAzNCBTYWx0ZWRfXz7EBQRFjfcrY
 L6l6msaXfzHazEEpPrVta4HVoLhju9WgJrPjhnSp+hC7TF/W9dfOMLjuEFPKo+bGTYmV8I6O5y8
 aQ9RQBKpQ3WXjpghxSfANz9TVQG2u1A=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEzMDAzNCBTYWx0ZWRfX2biGy3qLVXoo
 ehKODU/7zTDznB6xK4C+iABUXvkM4ymnIyaval9Uk2xVglDrz2hbrVgnI/9N/rEGuPuqnj0qTwu
 8GPicQ89NiHU8rER1WqJctIqJiRL5sSbVQVoOefmJBOLTr/CjfId94SBTsbJG35NkPdHIB6wN8k
 mIeBCKuBiEIosngTQajkCvFumTFNnR5sfAS2NQJews4XWC2TK3JOnQUOqnEhifwCoM7+kiG9E9+
 FUTbYmlGoHcMwU13xTU0BFtgK3Tsw4n401sgaQzP1ltkyKcpkPPIM8Vl73ksYvbjYdByMqn/IGW
 na887soXl6MFno8WEN3b/zdH7PVvV0YRjhLfwPOsenwva2SEudYOGv0AXJYxGfeB/Kvmh/4tLrK
 mpve5hmY5hgGCSPWB2OpmPX68vPZg2uuD7Eyc9TQ9PxaQRWv2Vrd9X0R8vVRWP5xpI5bHm/VH1H
 9yiC6q/txh3a394fRzw==
X-Authority-Analysis: v=2.4 cv=GfKCDgXL c=1 sm=1 tr=0 ts=6acdef77 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=Rt3kCFFBWhWisHNmluDamg==:17
 a=kj9zAlcOel0A:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=4S7jAy6oAwHpvZ4QFX4A:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: S9H2IM7P14Jge-Iz3r_kRcXHM-sLP-tv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 bulkscore=0 impostorscore=0
 spamscore=0 adultscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610130034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_014442_242874_CCDA3035 
X-CRM114-Status: GOOD (  10.46  )
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

On 26-10-12 19:02:19, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Nord requires different TX voltage-swing and pre-emphasis levels for
> both eDP and DP modes.  Add four pairs of 4x4 tables covering
> RBR/HBR and HBR2/HBR3 for each mode, sourced from HPG Tables 2-2,
> 2-4, 2-6-a and 2-6-b, and wrap them in qcom_edp_swing_pre_emph_cfg
> descriptors.  The eDP RBR/HBR swing table reuses the existing
> edp_swing_hbr_rbr directly; all other tables are new.
> 
> Assisted-by: LLM
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
