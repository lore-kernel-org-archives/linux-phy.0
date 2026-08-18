Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57F99C5DF7E
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 10:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rGKFX8UTo5/idXgWUU1UmXEk6HLSWY/aFgg2zsZWTGk=; b=WpFhk4DBQUPjPQ
	mh3hT1x1yErKqXPygrzyek3xaEtFTyRiFnm8dXwp5wsPYog4nJOAo1kETIbVXTPcTiHZ6EPx9Gf+s
	YjW04OvB8YSsZo4+olm6dhjP2d0kAar6e34VpAb6ZV24NFlgN6ROy5lQ9ViNjcDaLGDeKiJgBsMli
	okF1Iy7n/KK0/bydPUYSX4uWXwpz/1WoBukCmOyhdzq0gtUCRrwcrfaosjn94QbTZsu5kseWX1Bel
	ejRKiziF18/8ypyopG4Dvb/4fnCBSP+SUfHavLxUCjtW6hsGxMZz/vxjqK7DTjwNzDnZoSHVDsizk
	qpNWdzcLL+KSG9T4BKCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwGsm-00000007heQ-46TS;
	Tue, 18 Aug 2026 10:17:25 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwGsl-00000007he5-0SFW
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 10:17:24 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67IABIdi514957
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 10:17:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0eZmZ6af1TsFSeP69im9Q9imlxUhyA4Ib8fV+99bbJ4=; b=kEN7wH9SygKAtVlr
	49XlQ8Dz9TRX7SfcXJzIJFs9ktAy8YMJh64iueMoc6t8DzPiUc47PlTpBTFeHafi
	YmSGpXwQe+e4AEuVFfGT5cxlXDruxZUZtBypx1tmzGg0hdlUWRUyBlsZCFaOv0ok
	k3AdSk6oZy7Sk7dDH14B6GtZFy+0QQDneeB+xx2ptPt0NF2GrnGKtjHTlGPPol3O
	Bra05fsSaJ9Jnn6kFcm+n/nr8ax3J7lMAI2j0Id0zHixK1vxFZFVhtjmDdP9V12B
	0oV8/QOomZHF0hYynxseEuBATAz4pGhbHp34lY8m36Jo8MBMgHa0GECcC+QVhsHO
	APAkbg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g4ea2hydr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 10:17:22 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-936cf9b6f32so31584585a.1
        for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 03:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787048241; x=1787653041; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0eZmZ6af1TsFSeP69im9Q9imlxUhyA4Ib8fV+99bbJ4=;
        b=Qo7l8t30oJiCQ1ilrzTcOFdskppvg5nEPCQtWoyqWuVxtJBapJvRXETOD1Im1Du7XS
         nc7EQaSZ0hxKClcsD2RohIaia7buNOtfcZLMGZ4LTJu285ySWVQVxaLvZ+qehYmeJa2F
         J8LEzRqO2/Lfauw51FjTXTVBo5lKLXExG20qYJDqUlZuk6z62tvwWbiKZPV2F9ul3EYK
         ZUBOa/UeSnxDqIG0RQIzvfgaQu8UGcF7imhn2Pf2zEzp47L0covm53rMCrLAuq5wejeX
         AibbBW2rDPNXOJELZqeqgl2thqw//ck3DxENpF3/SMZ4u4hkPNXQPvUHjaw+gFJBPF8M
         91PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787048241; x=1787653041;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0eZmZ6af1TsFSeP69im9Q9imlxUhyA4Ib8fV+99bbJ4=;
        b=dPUaFsMj69l1Zpb4DYEsLPBSFfe8UovqRtO0qBtYKJlRQIG9inh83/lNPRB4J8bMzD
         qaCuykEVW/aobdHo2xtI5C3Ol/9R6z3zJaJAJbGwBz7VF7h+8G5wJqe5LrqSUY2OIQB4
         TLiDYXakuHCkds8yklGb1//x1s1rYfmcoUVuC/ceSxClouh6ehD6EHWefb/KG4X+B0wE
         eQSzDm/cTiFWaM79JLz2sp81YGgmpjrCPTw0ff+8O3Tbim6zPNlVJRa+Oah0VweZu1Vh
         h8zbUmQ1xPx0Jx40EsE9MiVDlJmzMfP2OOD5xv2E4WBBWVPRT1GzWTCdXG8JH0/jsAEm
         pXnA==
X-Forwarded-Encrypted: i=1; AHgh+RroZDRZWR8Bu14n0fH+jh+MXMapcXodbxNDpKgXoPv/OSOru5C7yqaJr9J1GXYuSptkNSAIfeOMuUg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz8YIMEj7ggI12SZ5c6LJaK1tCH8mgAp/DyHHa0LFQ6n5pzNm4w
	3PiOh+PMbhEXlVZYrABtmUtPt5Dak3AxHI+4KbW2y/dHkblzOMbOWz93A9R0z8rObG0KMloHkuV
	P1hdVktTH26pISrcYN/IagClT5kpHFHQZKUGEPpS7BhuersWuY6bACmqSI6OnzCI7bgx+
X-Gm-Gg: AR+sD13LP5zUBCNKTzeR2l6fD6ohOfk/+CNXx9Qx/+vqtzPcV6Hb3j56c96Ox1SZ/Id
	WtTuzDu9iBGndpl5mTydjw1qEpJft6+eqStI4fGjfQ6xr8PqT6dX2LMSNsKXtoR4IJ9/iBC439r
	KGFkglf5OB/rtbW7mmydxi/iLZYjgOQbUvxo+1IfYaomLZkKT89fXppgKMt6fEwM4G0V7H06lkk
	rWz1BJ4HNn28hlkjLcTCFtvjb6mKqUvYEDf0sTbxmzSMjlFd1yCYUNdUdoYHdkdHqmQ6fzUWyQ9
	BGRdR17AJZqE/b3gs5wkCivdju5l8sZKnWpr8Qn8g24JDCLjtfAuD8IXRYIRuSen6f3slU6pZRE
	vzVxbYVIMBvlH2mHAOlw3Q6zq
X-Received: by 2002:a05:620a:800f:b0:936:5ad0:fdae with SMTP id af79cd13be357-936d23c8621mr2530518785a.4.1787048241555;
        Tue, 18 Aug 2026 03:17:21 -0700 (PDT)
X-Received: by 2002:a05:620a:800f:b0:936:5ad0:fdae with SMTP id af79cd13be357-936d23c8621mr2530514485a.4.1787048241143;
        Tue, 18 Aug 2026 03:17:21 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c217ff7e231sm164193566b.20.2026.08.18.03.17.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2026 03:17:20 -0700 (PDT)
Message-ID: <f569cf08-408f-425b-acb5-3d56fc534573@oss.qualcomm.com>
Date: Tue, 18 Aug 2026 12:17:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/10] ARM: dts: qcom: apq8074-dragonboard: enable the
 HSIC host
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Xu Yang
 <xu.yang_2@nxp.com>, Peng Fan <peng.fan@nxp.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Peter Chen <peter.chen@kernel.org>,
        Pavankumar Kondeti <quic_pkondeti@quicinc.com>,
        Stephen Boyd <stephen.boyd@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org, Greg Kroah-Hartman <gregkh@suse.de>,
        Peter Chen <peter.chen@nxp.com>
References: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
 <20260810-msm8974-usb-hsic-v1-10-e5f93ea76ffa@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb-hsic-v1-10-e5f93ea76ffa@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODE4MDA3NCBTYWx0ZWRfX2c9lmt86ak5J
 5VSoBl6cGSooFoEIqXZ4TiJelBTgNyHkKY43gRL/Vh2IK+IPNOwx4i9VK7ThCq7Wi5EGiYxNyJo
 xqU9uwcrZlfAJBNU3QMK65IO1vtzWWIJlziLKbGD8qxQ+fVrdMGDhPcDvqTyzp2u5ReUuBJi9K6
 GYTryFL3Y1rKv2mWztp+r4O+jd1tN3ZNlgqpVzz/9eQ6Zjpv8gvJ8CbQ4d0/HwHrk8IaMYtPoXl
 8mGQgkKsLucE9QkCFse1h60hOwdDUqsF3P8H0wIXs8hCquE0qj4+BRpTtvAQztjvAdXj8QTpx2r
 L3WwLiwHMiH+6JXAQxUw6RzZYbOCkoMS2IwxNUjTI/jI7EbSKbFG5dCjMPQtX71VilHpvkobsla
 rwfB3Y99vSdrxavJql+CGDtu2E+axN7KF9GqnQswBwGrOzYg6wvUU0eo1SPUT8FRmxOFGiSUMOl
 Nb4g4/2i5FDU5xk/mxQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODE4MDA3NCBTYWx0ZWRfXyFYUS7Ln+mI6
 4cHP1IFEmrX6gnPiRm78Kir0UVw2K3OL0ezS+x68i/W5aDIfYR7PGFm5RhHJBeXLXiHMMozIqRJ
 /L4ClhChGFfp7vML4vTl3RBB2iClsOc=
X-Authority-Analysis: v=2.4 cv=XtfK/1F9 c=1 sm=1 tr=0 ts=6a843132 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=fR8JJq69IY22NewaCa4A:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: hG7upVCJvGesZIWesTmWh3GyRmmWD01p
X-Proofpoint-GUID: hG7upVCJvGesZIWesTmWh3GyRmmWD01p
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-18_01,2026-08-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 spamscore=0 lowpriorityscore=0
 phishscore=0 clxscore=1015 suspectscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608180074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_031723_160825_7842E60B 
X-CRM114-Status: GOOD (  12.51  )
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

On 8/10/26 5:42 PM, Dmitry Baryshkov wrote:
> The dragonboard carries an SMSC USB4604 HSIC hub, but with the HSIC
> controller undescribed the whole HSIC-attached part of the board is
> dead.
> 
> Enable the HSIC controller. The USB4604 hub isn't controllable through
> the I2C because of the board design issues, so reference it as a simple
> USB device, describing the reset line.
> 
> Assisted-by: Claude:claude-fable-5
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
