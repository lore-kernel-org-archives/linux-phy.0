Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D602BC5DF81
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 09:00:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0/WRrvtotPysyrtb3v9g492+guYJgyNB/nQXhmhxAUA=; b=k24VJWeMP1UKF4
	YYBE2MrRKKIHL7LWrjdow4dMX4/39otPZJiEtBnVPKmth8d1Ns4ihVmd78f3iFN0WLqrobZsy/Or1
	fS7nh7BFhDmsd39a1mg1pdaeHnVeEplqF0Af5Nz0v5vi9g6HEC0H4vkzW5D00U5wN1yQcAkqx9kEO
	piSAZRX8b17Z2pkf3+77gnJCxlsk7Uvk9BZn+54xtJxpnoCGI4PWE146sh91FDy2OJS6xZ9pWMXBl
	7JT/WzCUgm/FWsUGo2o0UoVBq/8kdrHv9iLs3LP0G8KbF6PPpQG3YxvPdRmklh0AXIEGxchh29jjD
	6hnsD80O2AWVKBBOEh3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwFgV-00000007YwE-1aQU;
	Tue, 18 Aug 2026 09:00:39 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwFgS-00000007Yvj-32Eb
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 09:00:37 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67I8BQ5H722914
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 09:00:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/ylqoGSHr6OZc2aQ4hnQQ8ZcxAh6qCEnKowInjzZGPg=; b=ECxShCjkR2GtPzyI
	32OZlQAIhQKIt3ynmLWUJFBAJBLcQl77htHF5n6IH4xY8YYxyBDbrDCrPjZOvDyA
	EP6V2KBbPpcy7zkQU6gqVgwNR3Kd3bu6QzIZebsPdjeZb6fq5joaGlWDS43iyKjC
	hFdoD4eNJXNy4hsB+BL50s0xMDzOmrjsXLA+9YVgl3bV4VkP4cqTJ794zj0UUDmS
	oje+pBALDhIwGEH6/SA6EsRDALuJ8Z3Gcp8gkdrMGOshNHtJvkFO61N50gjhVMZZ
	+ZdAaGIDTk6MjoiMmNi6AdXU+T3wLltydHSwjXQtmmEpmQ0HBYQ+0k4/riKMAVP1
	0/58xA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g4615kkpk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 09:00:36 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-92eebb130dcso42475685a.1
        for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 02:00:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787043635; x=1787648435; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=/ylqoGSHr6OZc2aQ4hnQQ8ZcxAh6qCEnKowInjzZGPg=;
        b=d/YcVJXrbIILDmat8D1VI2FeGVBz/PzeK7FWyY8mtpF8MBJdsoTzX5Evd7Tyh8NTmc
         F3J52pE5mFNkG5yRrcOJR/J0hqtiHeKBV6rRUQae6YODewsz6Rui9ZFCNx0H69cgOlEt
         qloN4dosT5m8YTaAxfyevTyYHzxNhQKk6YjgDRmizxJO0+v8BptsoQkB4QaAFbM+eW/d
         aisteyN/k1dGAxm1WkuwzCppp4LNA0ISwUdeVU/1L8zccoYdASeNcdWrAmsIJ/2ZTjmN
         3qw5Ji4yIxgxNI4kKXF15yx1OUDfELwcIIH+HwLfal4UpQkwRUbe1d4jLtQ7KJtyRUTk
         CrnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787043635; x=1787648435;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=/ylqoGSHr6OZc2aQ4hnQQ8ZcxAh6qCEnKowInjzZGPg=;
        b=Sn0C1wdCW30xQiVv9VfbQCdxrFQNJnEAQyYuIj9m6fVsjcqWcZA3ZE8jqKMgZVhQHi
         ExS6ksj8HFO8sTY4yrpP3v+VuNLc9siRRCNwJ67sQZ3ca7Bd5H2X/QVUkQGqec1/zGds
         SsWxlHYpyUlInczWGHY4m3lOa8aLveEcJGeiz5Hten1XIFLT/XpwbYdBEzqQaYc2LVPi
         F3+OXzkTYQbaufk9i903DHqWxcsJPXdJQxX6xy2xRO52/scz3QE6IjYHxgpaxRkc4yiU
         LEo7vYNuXGEhxOj+/qOEk1dUveTu7FUOVZP8PLJzusHEj5Ti6fIzTqZl0lWouHPF2Rsn
         Oi3g==
X-Forwarded-Encrypted: i=1; AHgh+RpxeLuiipXPRuO8mwXEoIc2gb1xcaDdg2TzbmZX+9FxRBF4MMjTZJmwngvzk4EOixwfenYX/rokjwI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwjTHaEWSI4JYMmIR15Yd7+i41gQakUe71W9nHC/y9bXpzmUypH
	8eFfkH7z6kDDDCRfFxXdi2ZStXg+dE1srg1FiwwdJ/X4K8T+sIIlOm39OxfCpcHQfCOEvXP/Gta
	f+rR8AfyklW7vLZERFcxIy/UwYukKrlO6PmZjRu5mPMQBy903jU7yl1dYQrFECpDiDztn
X-Gm-Gg: AR+sD13jRWowmbNUCTgqNTm9Ybh5YNBsWic/BEH5KmXJzo4LM44SJHFyAC4luopY76G
	mIFCKTTWo+UzO+XpvXkFrJQDNhun2SJXX60vKsiNW1frALC1dPpXnljdf4r6VywxCd7YfGb47ez
	cSZUHvgigKXIkpsSz3UB+NY5bgSi1nwO3CyyWvE2CIvETC50LBm8IOGUJUEEOOhlxkwQaVI73vG
	aqr4NBauYSHT77pEbPVTixoPg21iV3Hqc0almv40cniiTrgzHleT5CmCLY9JPBtFKFwANxMTo8g
	YN+fvcMUbKJK7pTt/qjar61J1wfWIuiSU1dBPLZbXnuzuVJFwfcDJUILEE1D3foYf4oj3ZSE/wL
	9jWoAd6YOIY/lS3a+2b3UXNkq
X-Received: by 2002:a05:620a:4049:b0:936:5a34:7a6a with SMTP id af79cd13be357-937071938a9mr358147485a.3.1787043635128;
        Tue, 18 Aug 2026 02:00:35 -0700 (PDT)
X-Received: by 2002:a05:620a:4049:b0:936:5a34:7a6a with SMTP id af79cd13be357-937071938a9mr358140885a.3.1787043634620;
        Tue, 18 Aug 2026 02:00:34 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b46d00b60asm1026805e87.61.2026.08.18.02.00.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2026 02:00:33 -0700 (PDT)
Message-ID: <161415a0-58b8-4370-81ca-dd26424d726b@oss.qualcomm.com>
Date: Tue, 18 Aug 2026 11:00:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/10] phy: qcom-ipq806x-usb: parse the tx-deamp-3_5db
 property as documented
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Christian Marangi <ansuelsmth@gmail.com>,
        Andy Gross
 <agross@codeaurora.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
 <20260810-msm8974-usb3-v1-7-1a47e1185524@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb3-v1-7-1a47e1185524@oss.qualcomm.com>
X-Proofpoint-GUID: tsae07QUD9Xkp9tO2EGLASDtqVRL_ows
X-Proofpoint-ORIG-GUID: tsae07QUD9Xkp9tO2EGLASDtqVRL_ows
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODE4MDA2NSBTYWx0ZWRfX7TEAkaNqXPNL
 GFvWE7h2JyQQN02KEcusLhXeya/fE7HTg2DNvJ7wc+x/CbpvVBqQBmtkUSefMS1ncfGhQRfvtMO
 LEOI8tBYh+dvap93oGbSkRVe5AIzcQ4WgSUDoV0stRBdStd/avV55DsVQnqyhiS6qSDxrT+5KBf
 ife1VbvwjbL4dORmT1BLvx0XFTN2K25S1Q3Q7s4n/F1jV8L5AathNFxfIRlK9pxNtU1kU1XPYaS
 74doLTCSzdm7zMGbiBDo/EG9G9djszFpweoEV3+boyfhh7YbnYqlJQLI0q8CnTWPCHsTHCa6Q8l
 qTy8iaUsOzKESyK9eU+1Kg1/RmAtNgNeoN2Wmgi82UE3WFooMJB6s6BkFPK36jr/HupzVCIPiYN
 8dgcfD1dnl9g8r7QsEqYBzrd6iXyHgZTHAQqdR6HdH13vecZEtldvG/Boe/3IGGc/sbXCgFj6DH
 KitYfHdwydXkM2VJvoQ==
X-Authority-Analysis: v=2.4 cv=Ruf16imK c=1 sm=1 tr=0 ts=6a841f34 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=MF3fq9KJeJn4W8AoZ4UA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwODE4MDA2NSBTYWx0ZWRfX8RHMeKPr9WLN
 WZt1x70Esv+34beJGJp4ssVCMr9frIvxPlPwPxqlK+e9KrL2PgK4+JxHvr4wIRV2Kpk2gnLg2eS
 RR9MUpOLCJJs1kDQSochTYEGpJla7Ak=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-17_04,2026-08-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 phishscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608180065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_020036_780341_BE75EC8A 
X-CRM114-Status: UNSURE (   9.22  )
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

On 8/10/26 1:42 PM, Dmitry Baryshkov wrote:
> The driver reads the transmit de-emphasis override from
> qcom,tx-deamp_3_5db while the binding documents qcom,tx-deamp-3_5db,
> so a device tree following the binding is silently ignored and the
> default is used instead. No in-tree device tree uses either spelling.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
