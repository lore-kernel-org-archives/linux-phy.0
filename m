Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DB2AC88E50
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 13:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KO2wHRBs+6RkD2FhGqn/VyS9cPZundH9g+2Vhqtq0Fo=; b=zvIbKzBln2E8Zn
	xT1PL58dKV773Li36zdqvmSMD2umccDuEHXGxBzbWYJtXQrYMUDGzkoO00CzXWA3KwUwo39Ymy4Wf
	ro7q23tiQotsUcT4Ar8k/+01csnwO5D4M1JjJnrErL2WLgVJ8N90gmMf7g3c0aW9edm+gJ8+bWCit
	sOuUiZAEzkit+MhwLpr+n+lD/YQwe7/YBNPfRKIjdJ79d4sv2oLg3Mo/dSNXrLNwk+dr+UXMpkfTK
	uAey7tZB27hPMpnagdkpETBGy8nPdBv4fvVE8KoMf08niWH2uyEBv7eT3BirIoPQcE4YlHnGJymqr
	ciKbTyW+IEnBvHl9LgaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x51Pm-0000000GlKa-1OLS;
	Fri, 11 Sep 2026 13:35:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x51Pi-0000000GlK5-1f6L
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 13:35:37 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68BCjdKY525000
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 13:35:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7fDBLHg2JhK2hYvJq0Kdbjyb
	j3USOEIeZfURdTQMJP4=; b=QS0btX3VTC64YMnoJ0GS1sbqxEsPlWBbiO0cKvwV
	WZAQTjjtoRpG72dSt83l0Rv3CBXnFLuYD6YfMH72HScYda8Y+tW5eEA6vBMzg+Al
	Qx9jCO/3SaD4tXTzS5DypjFJQu4f9jXgRBXEpUIEHRcLIymgY3/57czuEXtXeTms
	VPBh+tMEZbgtgxe2XyG2njcmnaVDpS9eqIqKtuC9nWU83oNqDzPOZW2KcddrYLmE
	P2gsHmWe8uSq1XrQQwj+Gr4eE/G4Zrc/UU8A52gWZNDd2HyQgBBX7UHuZtkCf57l
	CgSrBC7fDh/+nB323OL7SWYvGDLrndMwuZP9GiwVxv9kWw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gm2q13rew-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 13:35:33 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-93771aa0379so163038285a.1
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 06:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789133733; x=1789738533; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=7fDBLHg2JhK2hYvJq0Kdbjybj3USOEIeZfURdTQMJP4=;
        b=H4M2lzkUiZxJc59UyoUakk/DHw8wbe/CWj4hLtmQuLzlS155lBAFdqdYnplP4yppWS
         oSgUISsMik9tX45V6wHpPAuNcZ1hJ9yMaXCse0yIcWM2loU2JO2TpfP9+KaaK/w448KT
         yjvr5PweH8CteD7omODjrk2T/hujcduyRTVIez4EbB2kIuAYxh8wLLDDFTqFKRJP/UYl
         BVXLL2fxZMwynyKThd9RgdJ4QmK5aPTALfyW2x6K4PpjcauYFOq1QrrhLKg1sJhi221U
         QoDAcxrDKsN8/tPeyqEm357FHhCsphtjq4rGrqV1m9RM0esPqklud3k6CSwIWJIqS9LV
         4G2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789133733; x=1789738533;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=7fDBLHg2JhK2hYvJq0Kdbjybj3USOEIeZfURdTQMJP4=;
        b=ooQ0+hEFIqjL4dLlWDepv3gozSM9iMFi23/StSbAMHZapDGpAWnB+OOEghnsHRdnjZ
         W+O8t2kYNZtIz7j+ms87Xnh6xuBnnVcbRxuALyLMrYmmK1TZ0jTY7147g/VKSfcsNin2
         do9Ba0YgwaAtLBXXcQQ93j11dgpyg9A7jnkemPUWhrkGnOye1cNiVRwEPjTZVd5/I4j8
         VyHZWF2XHd5s9G86cN8f8+ogmoAtoPz3R5SPno9nAHvAyUpYSd9wliZ7GuzGwxSR6sE/
         Eaq39W5BllrUs4VmQfNImgGTLB6syQvoyJT6j0tq+eLCfk31uKGOlJvtzxZycnD2pidj
         UP/A==
X-Forwarded-Encrypted: i=1; AKwUvBxao0BL3mUhP3GP47NPCCPlpHMpQH4iICVqUaCUDnJnUlejtZbkm8Wp9Ye4QQu1iQbQc63jQ5/cbIE=@lists.infradead.org
X-Gm-Message-State: AFuF++mIvNbqDchIqf+jnws+JV/AEO9s7T2H3O5wNjRzKuGd7YiTrlBS
	rcYIYXX2IlM3r+id+6Q8rGpVJVdhJnuvG2/WMi0i30+ZnAOC4j2BTIBINp+aHfTLB+KgZrgoFE7
	ZsfRZUKokqOjGGlHp0Ijb18P/7Sv3Z2euTVRTD3grqHqkToKWmuvz5K0wf93IjtvEICCP
X-Gm-Gg: AYBFou2t7dk3bYDRNCfQP+h91+P2Y8ugUIYRVvtNEIi/f0DZeC2810wreYghVwSMvw3
	E4z4ihSaeVFFbAf8TbalClHfNNqTRxCQb0QPdXsEazxj6KGeLzddqA3HNp2sQV6FpmKZTadzLsG
	D+rr43BY/5AyWNdTHLvulJ5nWKlrrEBM+viXQ3epY1ubNXKgw0ym07PcXEtAV6vxV4Lhum0HbP7
	pwK620Ib5Fw66hCsm3Co2K/UrtjVh25AufetXUh1BOVAdFH8uFnMi2kJNOXA6jBMQHnCm/7AQEf
	ChHEns8HVytD/M2kWGiYtTmZrte7CErGy482H3b1PeSiH0krZDwaNft7+W7hdjH5Cw4Hd2Ofvi5
	PF/p6MSDDUozy9KI=
X-Received: by 2002:a05:620a:630e:10b0:939:f978:c1ab with SMTP id af79cd13be357-939f978c3b4mr135520185a.4.1789133732627;
        Fri, 11 Sep 2026 06:35:32 -0700 (PDT)
X-Received: by 2002:a05:620a:630e:10b0:939:f978:c1ab with SMTP id af79cd13be357-939f978c3b4mr135511385a.4.1789133732044;
        Fri, 11 Sep 2026 06:35:32 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.170.232])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-486eb350686sm6290623f8f.27.2026.09.11.06.35.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 06:35:31 -0700 (PDT)
Date: Fri, 11 Sep 2026 16:35:29 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Monish Chunara <monish.chunara@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>,
        Kernel Team <kernel@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-mmc@vger.kernel.org,
        Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: Enable SD card for Shikra EVK
Message-ID: <e3h3volimyab5h6nov4bzassb6qki72c3wev3h7yyaxkdn4gfg@l2f53ch34aru>
References: <20260911093932.2376058-1-monish.chunara@oss.qualcomm.com>
 <20260911093932.2376058-3-monish.chunara@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260911093932.2376058-3-monish.chunara@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=d6lgWhjE c=1 sm=1 tr=0 ts=6aa403a5 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=po8fGBi+ks8MzcVQGuqtFQ==:17
 a=kj9zAlcOel0A:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=vBACkDl9X50tgIqftl8A:9 a=CjuIK1q_8ugA:10 a=zgiPjhLxNE0A:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTExMDE4OSBTYWx0ZWRfX+J/u9XiwpPxj
 6rZ+xTlVHzFPZZIvcMPansaLQmxGTiHNNjGBJauw4DkItrp+RaD/VaFk/wKgvOIXJBdbUZL+/BN
 C8917hxpIF1iviVbhI5oRIO7GFZaysGUM3GgtDIVICYhKhMBa/Y+nTEXpR1/SmNJh5ISwTsDoe3
 c8PaA+8eU1BwZ4QM3PZe0kq0Adv0zGJZ+v6Y1Hs9xfRLZrOWvh3WIeb4jL+FzdSfxdg875wT38V
 Lo5hj1k+EQ22J53ICI26pyD0K5Rtg/foVASL+cTNNmkC+l3Kn3o2+bIi1Bg2/PSozkfFAgRAYOo
 qCCFJxDHF01flI/U1lrwPqQJdaN4CwTNSHtF8Oz9znocp5BkLFS0rHxGvHP08/AWavuqS7u/ERm
 N1gvN2Oq4EyWqY1kj0fFzelx9rAdbN2DxwSVR5FT2i1vI6FW4YR+ltEwfnGxPDoumBqpRMnX7Bk
 W0xddnO4WZEJSiuqytg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTExMDE4OSBTYWx0ZWRfXz0XgDDWqIOTt
 YzwqUONocpvbzeFJf7OB7wDMcYysy+TmgWehyWbAIrCeaui0xg19wE2lgTH/HM9QJ5wyj2UbvaL
 v8hnmmJ7GbnPOYIu68ImIv4TEcoMX+0=
X-Proofpoint-GUID: sdRHtjbbv5TrRleP722Z1rtcdvE1AGOd
X-Proofpoint-ORIG-GUID: sdRHtjbbv5TrRleP722Z1rtcdvE1AGOd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-11_04,2026-09-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 spamscore=0 priorityscore=1501 bulkscore=0
 adultscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609110189
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_063536_035090_CAB27D1D 
X-CRM114-Status: UNSURE (   8.61  )
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

On 26-09-11 15:09:32, Monish Chunara wrote:
> Enable SD card for Shikra CQS, CQM and IQS EVK variants. Configure the
> vmmc/vqmmc regulators and gpio-based card detection for each board
> variant.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Monish Chunara <monish.chunara@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
