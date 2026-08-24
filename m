Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83E8DC5DF8C
	for <linux-phy@archiver.kernel.org>; Mon, 24 Aug 2026 01:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xxz1wuVaClOepFTg2omwd1DY0WXx9BdAygGdX+jJ34I=; b=YuopUuLCiEDtBT
	AeQiCB5zDbrLf3E/1vy4rvQIYoMCeAlCFAaIEvNXpkCd2hZb3BFshvGEZb5R12jl/oU9Rtt7EFN60
	cK8e+1LyiiJZFhFiaJjOKbZnJfpbORS01eKMoqddjSS8oWCD5vRixqamo9Z8u7J3n2+FCg1zus+M1
	wSdBU5pZGcJYaPUrXgUmyJ3vq3ru3YSEvkeHjsSApQUh8812TYxpd4/mq08HqYaLJGxWLyhrYaf/q
	5B/riOr1cq/+JzVMHe8QqWE8chN7l9VqwbZXQ3YN2YOh2EdCxH758TN+3W1yOZcPIs7kRYd24VYoG
	EMJlwEJxcBOUvZPtSfvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyJgr-0000000FkOA-2ksV;
	Mon, 24 Aug 2026 01:41:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyJgp-0000000FkNp-0JXi
	for linux-phy@lists.infradead.org;
	Mon, 24 Aug 2026 01:41:32 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67O0lAmv982804
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 01:41:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=5CT1DVv6oJp
	+278cP3iXlXVLmvw18dDcdc8XIOiLBVY=; b=pgUnUNJbh2qVpJYcJiC98YG3iZO
	kJYMSuv+C+SMAHH0QZOjNbUKmKWEkFZk4HBp5Ut48103RdChDjfoK39IkLGykw/i
	fFoT02EMlyzFvD2Gnd99IJWn4y9d1i8zceeRMtVNgq7+xjWVca51fCk2WG2ituXk
	ja7FYJetm84SfymI6XrykvRhq8RM4CBYOQOPxNak9XW6FwSUTr2ozquk86tUYVpX
	0uD+7CtmWHYqlLCS8M4MA2TnDzJnH4bsRjK+L5Y9eDlM7rxG3vXSyR7j/OTroUnH
	jCmcz4lLw0CYtDDld8IMHsE5kWQvVbXCpuBb55vkH9CTkGvj4kJcLQi9YCg==
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com [209.85.128.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g7456w01c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 01:41:29 +0000 (GMT)
Received: by mail-yw1-f200.google.com with SMTP id 00721157ae682-7fe835353acso51546517b3.2
        for <linux-phy@lists.infradead.org>; Sun, 23 Aug 2026 18:41:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787535689; x=1788140489; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5CT1DVv6oJp+278cP3iXlXVLmvw18dDcdc8XIOiLBVY=;
        b=aWNLoQ30lkU7KXyv8PqHhVZXCd3qRQuzRFVHdQW0GJFEHOZ3eqjcsCMqmTYXBAFEY4
         WUqnDDu2AjmjfLQm3TnU+VH0UXOjQ+ke2WzKCF4n25s3sSkgOEEOiuv/JZRb4aUdL4zx
         HzDTVbg0/sNIN3M3NBVoSwukpNUp3ZONehWPISlSjA1KMkpZE+ggLlUYOVWUEVyp/dy3
         SUd4IY+Ljq56QQQo/DeIqL0GZ/Gv+uy3U3USCOQlOLk7rX2advgyNRABnrmkx/UXlwEE
         jDo8gQ6OCpRZkSfaHRCcKqED39QIQpC8zO+OMW8+Gc4tHs0jMMN2AInCvm1hpVvHYghV
         BGuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787535689; x=1788140489;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=5CT1DVv6oJp+278cP3iXlXVLmvw18dDcdc8XIOiLBVY=;
        b=UV3bYjjrhX6fnsAG8tsfHmCwZFEZefs2B+RJYv5j5JREDlYCbnVuU8vMLY9mKDXsJf
         dnTcXqDwd47CTNgOufRSK2wT8fgO0jLj0XiWiGWQ+F1kFbJVIXpohzG6w7aqGbleawzA
         n7ypAMbIFCXqUp4Iueac87vmIHtJkRTJd62WGfNzQd2JOa7Mn28Ey0LwVxRLwPGrQFiB
         VA5Ipa33hveRYorWT+fNBY1a86WhRenSYR0N6j7kQt9MyXmzgXwsE8nDWf42k7HbgCX9
         dL1Tf9rtef0CcP2SETpwv6SNTP0sSDYtUN4Ujk/a9fK1lzVgyLkT2mc2TkqBrbP3QBnj
         8s4w==
X-Forwarded-Encrypted: i=1; AHgh+Rpv/etESENPlfrw2ZHWVndpO37K7kLbOA+p7yXxMkXInPj0DT7hYCnqUofsD04msrF0waMd0DMoEng=@lists.infradead.org
X-Gm-Message-State: AFuF++lMROUdowl52yRED31jMr/3f9umazu6TXCFmMoTC8gc8C6dZtaT
	S81sg9kofIY4IWjubMrgx72GTDCf7P7iwBs0bY9MOzmgrHarHyq46k7pTy5C+CuDGzBQr1ee6ia
	+Q8mxLl9Tj8WbUUOXyLiNWPaxqDGUbjxHvRQztWcv2G+rMgE3NPh690BI/+OkX5xDaqna
X-Gm-Gg: AR+sD11YHwJGQnjOw+pVonwG6sy+dG3G1EsY3EpkkxQXGYDQEbVJ15mELItxANjro1l
	FFZX2wrnZeay5TBZ/O5/QN1OZzHhL9SL9SE/Z2QJs92UXy62Q8hmVWBmIzH5GhLBBqu+njI+U2J
	KCVZss2azhbvHt4p8ojOn47+yuKPRP35qvh8KvuCBPJnyUrkHhXR35oE6MJqKBK8+v2pfq6Y1Dp
	AvaWaB8Z8P7RU5CUdI8Bv351dGcW2z+vdF+fGOf9IApEb39/rXGb9poSj7r+w4uvj5VCZ6aTmqf
	rptonDx+kwYLiqenHsPP4j7xR45MeUk98Q9LKFebeMpMAqrkE11L63LdsjzmMk79242+tXiYohW
	in8MMTMarn6Fp40rqlmzBTRTXazJLCsnsBweHLqQXQs8AI2dcqg==
X-Received: by 2002:a05:690c:9c0e:b0:81d:e7d2:a46d with SMTP id 00721157ae682-849eff488a2mr92669527b3.5.1787535689149;
        Sun, 23 Aug 2026 18:41:29 -0700 (PDT)
X-Received: by 2002:a05:690c:9c0e:b0:81d:e7d2:a46d with SMTP id 00721157ae682-849eff488a2mr92669247b3.5.1787535688738;
        Sun, 23 Aug 2026 18:41:28 -0700 (PDT)
Received: from agents-mac-mini.lan ([2600:1700:b450:a0df:b0fe:707a:f08c:6903])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-84cac00f57dsm25687587b3.40.2026.08.23.18.41.26
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sun, 23 Aug 2026 18:41:28 -0700 (PDT)
From: Jason Pettit <jason.pettit@oss.qualcomm.com>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Jason Pettit <jason.pettit@oss.qualcomm.com>,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qualcomm: qmp-combo: update DP PHY PLL programming on Glymur
Date: Sun, 23 Aug 2026 18:41:25 -0700
Message-ID: <20260824014125.2210-1-jason.pettit@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260822142508.25473-1-jason.pettit@oss.qualcomm.com>
References: <20260721-glymur-phy-conf-v1-1-7c8909552c5e@oss.qualcomm.com> <20260822142508.25473-1-jason.pettit@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI0MDAxMiBTYWx0ZWRfX9D0/fv6Frnox
 Y1U4PQae0lzhMtfoLdPb9gx2LM1vg6lLXNiweCe7YQ6NEcXyBJL0gTzhCGdfEkz9Nv+gAARvZOU
 6bbKe91Df7AatmzEeMe7XuK7Pyk9ZPo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI0MDAxMiBTYWx0ZWRfX1NtxVwpTs+1U
 HLd11xq0rKxxxQpnEgE3WqKUvn4RFBrglXLruB5hW7cFK1rMLPnnzUh2XkUBta71+XZrEAxf/0k
 4JwJXB5zPJgo38k1R/UDtOOn1VyK4OgIvJ/1yqMbeLSAzZ5b0BuZMlwmls10+FjkQ7q25gDcqHF
 ZaxKI8gDZ+K+63yymK6KZTb0bgyEFUfUilYBqn7VJGaI/zUwH+0z6PeZCfWPZ2YCHR4QTKbYWOm
 ZCDnI322M8DgMIDwHR1lH2lyMChrVyQMXyJiS0yZ4nT7igHvAepZE6R9hxmieJ/lasyKdGkuxzZ
 FWGnSKWR3ig+68OJOrp+ya/5ZK3TP/H0txQAx8lRi+sgWS6bLJJ9FwZrE8FmqyXFMDYiwKoUBrj
 VTvpJM/tocfiyCWOeFNVaI1MnxQaM7Z/y8xGM/uGhwqfHneifqUxFww7hIHmbXDemy15GeZco4H
 tdIvVpeceOIGQ5a5Vkw==
X-Authority-Analysis: v=2.4 cv=RtL16imK c=1 sm=1 tr=0 ts=6a8ba149 cx=c_pps
 a=NMvoxGxYzVyQPkMeJjVPKg==:117 a=xqWC_Br6kY4A:10 a=Sv0fKeRqtYgA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=yx91gb_oNiZeI1HMLzn7:22 a=gJSUdyVw_5VDRsqcVNoA:9 a=kLokIza1BN8a-hAJ3hfR:22
X-Proofpoint-ORIG-GUID: 3AS2azpjj_2M0g8f2pUcgVtceSUmGOiz
X-Proofpoint-GUID: 3AS2azpjj_2M0g8f2pUcgVtceSUmGOiz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-24_01,2026-08-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 adultscore=0 malwarescore=0 phishscore=0
 impostorscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608240012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260823_184131_303972_DA031D92 
X-CRM114-Status: GOOD (  10.73  )
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

Correcting myself. My earlier reply was wrong and I apologise for the noise.

I said the include had "dp" and "qserdes" transposed. It does not. The file

  drivers/phy/qualcomm/phy-qcom-qmp-dp-qserdes-com-v8.h

exists in v7.2 and the include was correct when this patch was posted on
21 July. I checked only current linux-next and drew the wrong conclusion.

What actually changed is a later cleanup.

  4b04c8779a50 ("phy: qcom-qmp: qserdes-com: drop duplicate v8 DP headers")

authored 22 July, merged 7 August. It removed that header as a duplicate of
phy-qcom-qmp-qserdes-dp-com-v8.h, reverting d10736db98d2. So the build break
on current linux-next is a rebase consequence, not an error in the patch.

The practical fix is unchanged. On a tree that has 4b04c8779a50, the include
needs to become

  #include "phy-qcom-qmp-qserdes-dp-com-v8.h"

which still supplies DP_QSERDES_V8_COM_C_READY_STATUS and
DP_QSERDES_V8_COM_CMN_STATUS.

The other point in my earlier reply stands. eca0e717aab1 ("phy: qualcomm:
qmp-combo: Add support for Hawi SoC") added lines to the same include block
on 3 August, so "git am -3" is needed to apply this cleanly.

Sorry again for the misdiagnosis.

Thanks,
Jason

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
