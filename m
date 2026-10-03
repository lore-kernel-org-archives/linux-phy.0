Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2133ACA5FDD
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 11:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1oeVr2vBXM4D4qbvDfaPywolqeyUKDymnlWi5LgCYbQ=; b=h/msvTiBBvxyM/
	5OrffApla7d4z4jNkElggVzMHtn5L67LjfXBbDDLxbmFPlF7NCsmBkPjWSSdUaFldrcp6SaXNxlG3
	c6mGDyqjj2XZHfgUU81KSBZ+6M8ISK5tZDl0gGYzZ1CCC9hX9ltgX5Kdw01ogVqy+gzmRr9awjh7c
	oA878JF+GK0h8IIwsnfnNLmwTRsNaktCmIA1VvFBrgg24fpwf8MAUfGS+5GiYZ/OoSUXWPeBHkFxD
	4tayDGXa5/RHsvP3MtCcIbtmaL+Avx+soSc4Y1tCmpc/XLduauPC9JHP11qgRZSWK5NZuVjxtQR50
	TaVPUvQNXS6oL9pRbjrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCxeB-0000000DPkn-1Tf9;
	Sat, 03 Oct 2026 11:11:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCxe7-0000000DPkT-11vY
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 11:11:18 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 693AtuD2109564
	for <linux-phy@lists.infradead.org>; Sat, 3 Oct 2026 11:11:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UE2uEuYVLje6l25RVb+6f3Yk+oZ8JPiWMgc+3V3C9oI=; b=V2oyxHBBB1jvM5Ow
	crcDF4evfefwb0OIznLHLFoXGMh8i8tfuPMFKahTZkdWR7PrsX6H09frhmcdLwLX
	6FyrQaMvTJ0KxitESHH90u60fJA9QnMRhB5gQp18KmMPPriZaT21Dr1MObotAKcT
	VIGDngQ5BrHBgmQVBEZhOFJcFntKAn5nupT2bRkQpF8ax31aW9/FhpAvcjRSDhw4
	tUY7FWyVu19KLcvjcrA/3Pe2Q06+UDZs3sB2wbeXL/mNxxvcDFLw2qynBj35j3mb
	rcYtBdXHH2h6ozG9pubUOJ7ejMv9STp07C2ITM9nR5hztFbge7lMqRaGtUTiQLqz
	Sy2YNw==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h2sx30prt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 03 Oct 2026 11:11:14 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5e0a8f73addso142817e0c.3
        for <linux-phy@lists.infradead.org>; Sat, 03 Oct 2026 04:11:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791025874; cv=none;
        d=google.com; s=arc-20260327;
        b=OLD5fQIcqgcPU2SCMqfbwh0nA8hWkDCOU2npGc3JcUlcBfh8Sl4zunL761b2zPintH
         8C2xu98h7lXjVXpqA6BzpWkJxh2oddjitANIHzI81G0JnCJBGGDD+1dJFzW6Rnn3b6pS
         JZdaUpQ/gVrH54/Ct/v7BGQgguE+OIboLCLWZk2VFGcuO9ijmSFMSls9Qn3mp9j/NiLo
         I7RfxZx69jY7laR39WlKxKB7XiaKy8mbuTGYm/+IBFV3k2JtrNofCmduQo5kObXrzCGJ
         y2dGgVbrplPycfIbGI9yfnRJb0WYZDJHwpATVRg6S/oN2nPtz3pRds8D2gOu/co2HeCg
         01yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=UE2uEuYVLje6l25RVb+6f3Yk+oZ8JPiWMgc+3V3C9oI=;
        fh=H+wQZfs2R/+egkOQOVbNzf4Q1clIF25Bb8lq4Xho5Bg=;
        b=dNfEi/7xDMvX7QXwXzxZJzCnNKb+z2SQZXvTQPCJSKDxEyDkJCp8sLPyRhui2WzRo/
         2I8Eht7ZC3LI7X4KE/SKbCFQ1RRGoiF1IuaeB4PZtmEe5cVljZcEwkwCThrdKN9CJ6ya
         TcealTvPBeakQi2b2yMW3nuCj2m0abM1ba0FR34vMcABfi5b4x6v8yjLaoO9vgUsWyRq
         O6OWU+xhyYh40iJJ5YNRufg1Xx2nS5fJiT6QI4a3/mPBSvtpgCz44TGStEldNxfmo5f4
         /dvoCYNOTSBcDp52rMbaQU3Ca6FrySnfTtV7uVK2tgre/R4zUbLaryxZBMmlDOh/yjZ8
         HgBg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791025874; x=1791630674; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=UE2uEuYVLje6l25RVb+6f3Yk+oZ8JPiWMgc+3V3C9oI=;
        b=bq0Yz+myFJG2wCregOeWKDg97ZdAfVGC52o3FrvEDGftLL0z9czoyH7MU1ybLEgpWU
         SEPIM3prsRZmTLG/yLuu9qZMPofI55HUKn2Ecn+/KAP6DgiENUhaCxIgp7ulpuGDtRvE
         ZGKolBvMPescNXL9xyjlfYObmu23mRl6gM9uOEhLG+lignCzgzx92UH8xpnhQ+E6tt/4
         Uy6i7nAgemXZlcamtRkBEdBP3qloweGHsHbIFekwcFBTC+nTmSdTueO5A9Ou2UCh24bm
         Ut8t5Kc5cZHCdmME+2ofNqqICBQUoKhXwyS97nJItpO1QILfQfP1zTqApVxynzQcFNs6
         dH6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791025874; x=1791630674;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=UE2uEuYVLje6l25RVb+6f3Yk+oZ8JPiWMgc+3V3C9oI=;
        b=kERJIzjmKuKVw4jRKIzkZAD3BCB9uSbz1lkQPNm/7+XZz7cJ70IPmojwDEkmx4GlkD
         yn9HwnWG/xXdL6Ez2+8bweA5lprzaE4v0QgMZlsJ/FSbFvrhFufqa9rqebvK5yrfNH14
         2uxv3AI2D2Y+GDK7LRGsrwrNb0uW+7AnrWETaksLchXOLaicD/QcGt8+2K4H4+pVcGNc
         XcIq1wQLVMTz0w+deNd/0YqUCeGQLF7oGUi4iHz7Dzi0EDQ+tq/5NTMl1Wd/eU8NNDlC
         A6BsJ7mQnhIoPo1T4XMRiUPXJdVizCgEB0j92pamJKD04745a4aEh21dYTC0MC7OmjKl
         XZnA==
X-Forwarded-Encrypted: i=1; AKwUvBzvmlJA+SSEvjyTMVr9FhMea4fNLoq/0qqLNAiduba/R9X951PjBWz8PZx1PjjnjQaGzzEj1YQ0Ogc=@lists.infradead.org
X-Gm-Message-State: AFq9FYLZcDOnKO6kt9eP4oEoo1UUApmqMj1xj5inn61qimrOJ0iLA8/s
	8VNY4wmh4914XuC9ln0U2EvZvHex684uGOZlubGJln2ZK/xUie9/EPyIcTLpzNIhzd+D2StfyKw
	vAnbRCndJzeqfYKeT9rXM6fCORzMPJUWIopcTpdK0+KQaaPE/NtmkBkkbDfPmEbOu/GBd/tPdDq
	o3bhL0VjpwMWXSnYqZjucEUrqtquaaUw57XPrH5H6rS94=
X-Gm-Gg: AYBFou2aLaSuymSj4L7rhpJP0BVHOKLp2NxCk6+0QhDdR6tJqjRSfrX218Q+HiL8uF/
	PpWhzOOK0UmoCKqvzJFacc6ZUFQ96o3r2UrdSyKknZHrs9PJnC7vz/Y0L5HsRFdDq/WCwa5fOZq
	6wU012Mss9wh099hiK5D8ciQBPEyzro5uOAvcE3RzXtaZPbsx6z25OLibQpeLWZpv7ms8N9n4/L
	YD/HQJUA5CGCB4NIQ==
X-Received: by 2002:a05:6122:2106:b0:5d4:f492:bdf4 with SMTP id 71dfb90a1353d-5dab3357fa0mr1691080e0c.21.1791025873625;
        Sat, 03 Oct 2026 04:11:13 -0700 (PDT)
X-Received: by 2002:a05:6122:2106:b0:5d4:f492:bdf4 with SMTP id
 71dfb90a1353d-5dab3357fa0mr1691051e0c.21.1791025872550; Sat, 03 Oct 2026
 04:11:12 -0700 (PDT)
MIME-Version: 1.0
References: <20261003-kaanapali-camss-v18-0-87ba4ebe0db1@oss.qualcomm.com>
 <20261003-kaanapali-camss-v18-5-87ba4ebe0db1@oss.qualcomm.com> <fbc988c9-d701-4479-96d0-f18d92063f31@linaro.org>
In-Reply-To: <fbc988c9-d701-4479-96d0-f18d92063f31@linaro.org>
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sat, 3 Oct 2026 19:11:01 +0800
X-Gm-Features: AclHuK9kb58p-lhxZ0JM2phaLs-oK0O_r3eZlqRT_1LCVxXx_9IYV-_oLUsV2-s
Message-ID: <CACbMrhrB0k27wBDgADSbhD8Cjyx_-xBvgCOXcwXMxmxxuEhBGA@mail.gmail.com>
Subject: Re: [PATCH v18 05/11] media: qcom: camss: csiphy: Add support for
 v2.4.0 two-phase CSIPHY
To: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Cc: "Bryan O'Donoghue" <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=JY0pPkKV c=1 sm=1 tr=0 ts=6ac0e2d2 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=yOCtJkima9RkubShWh1s:22 a=KKAkSRfTAAAA:8 a=kQtmRZuExVT1y5CfGhAA:9
 a=QEXdDO2ut3YA:10 a=1SaFWpeTM14A:10 a=tNoRWFLymzeba-QzToBc:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: Pzlkg3OZGP2MTo-LBadOZdDNsjHxYm6h
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDAzMDA0NCBTYWx0ZWRfX2DwLwfDRUzXF
 AIBiIoODs+z4SL71WD85mW9PxXPx9C0JjYX04uwOXe/+KR4rGc+2GpYH5tfZX+NzRSpOxlbt7Y7
 TSU1jdL7XFmocrFyYZgkZbP5O6vryG8=
X-Proofpoint-GUID: Pzlkg3OZGP2MTo-LBadOZdDNsjHxYm6h
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDAzMDA0NCBTYWx0ZWRfX0IiFmriPRbEB
 R+FWS3wdYRKXkIszjXmZ08txEF2FY5uwThXGgiPrfnDWGhlrdRj+v7SKMlGkMX9W+uRI88lu4ui
 ichX7kytYda+HZrzUuiZDdZ+D4Hck96FwNWPwAXKv5+r7kg/ofs7X4Jqp7gqiYlEhl4k+EJoBTE
 nobE4nzjKHEvcOAnGdTVojeZtLjuQS1ldFZt9TAbEa1+NUR0X8xV7u3HsWS2ziRRMrdt14ekuvY
 1sAqVP2us0rmt+6SJ05mWVvjQfiPB/h64Th+IyhjFCFTWwN88/zxlgwh1wbcso2NwcrPYeNJMIj
 ZmxLHxCcenw+4ILPY3ZTw/uvrNYD98S/LZhbmbmNB6aoZ7MT4fomqBShCck7lGJpHZEqUXJWgEM
 jZq9oQOKMNEK7tlnLEeHksDQYiVD0zrdWNzEqWfHlRZrfXh/N2gLw98PAdXs0nLMkO4s0Zc9QLf
 0HmrRnRfqQ7snBHiFCQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-03_01,2026-10-02_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0 suspectscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 phishscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2610030044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261003_041117_339324_ACEBF774 
X-CRM114-Status: UNSURE (   9.55  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

QWNrCgpCZXN0IFJlZ2FyZHMsCkhhbmd4aWFuZwoKT24gU2F0LCBPY3QgMywgMjAyNiBhdCA1OjA5
4oCvUE0gQnJ5YW4gTydEb25vZ2h1ZQo8YnJ5YW4ub2Rvbm9naHVlQGxpbmFyby5vcmc+IHdyb3Rl
Ogo+Cj4gT24gMDMvMTAvMjAyNiAxMDowMiwgSGFuZ3hpYW5nIE1hIHdyb3RlOgo+ID4gKyAgICAg
ICAgICAgICAgICAgICAgIC5od19vcHMgPSAmY3NpcGh5X29wc18zcGhfMV8wLAo+Cj4gVGhlcmUn
cyBubyByZWFzb24gdG8gY29udGludWUgdG8gdXNlIHRoZSBpbnRlcm5hbCBDU0lQSFkgaGFjay4K
Pgo+IC0tLQo+IGJvZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
