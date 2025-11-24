Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EC55CFD317
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 10:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YdEqe0Mn8R+Pb02Kr375chJyETgzh80FYHaCdq+Z49g=; b=Sfsb9Cbx/vI6PP
	9aTPvetXX/NPjjqJlPF1rv3lQ8DMxvTGGpS7j3nSIRbMlo9iK/EIeioiIvhOezNzVQ1mBblLR+O9t
	sb2Joz8Fkc0nKHhGX25T+RyRg5rNbolK403xup7msRyVEdwl6B07htOTMmiLAOv0EcYVy39Qijgxj
	xUmTDjGIy4YmL4pGQ/euHWbKlZlSrTbYlM8mBWFBo8O6mD2czp2jNsJisI49K4+kQen/UcYOoDsyN
	z7qvOJ5ybcUiNWbbM6RyAOCjQFkGKR3zUyGoIiL8CMEtWiHLX1I/Q5OVPH6INkv3F1e/zhm1EFszr
	zy1LkdVf2ibRfHEtvWAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNTug-0000000BQt6-3Kyh;
	Mon, 24 Nov 2025 10:35:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNTud-0000000BQse-1jDv
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 10:35:18 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO89kOY3821986
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 10:35:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NRFeD8t+m+x2iC15q1pzZmoSqtUFKv7ocqYR/UNGr7w=; b=Kwo72kz9q/Rq9/Ql
	i7Ri+eHlmO+d29WoORWWqFdNcyrfq/CMxV6f1rsU0k4uVCOrgLe6LuAyQwo5b8lb
	4EZZGQD5HhVz1bQnXacZf9OdB+z1YzRzOxY+tMwZQ0h1tY+Fa+v/HuzQ9gP3+c65
	WAFYp95yJ+gCMRNsbwXkj4aPNmTasgiQ61T8Y0jTZMns9AQmoNBG5nTxRCwNyeUZ
	ytfd07uOnfBS7iz9SCeI8lqetcr++PrCtpx4fDlUAmS9/8sud9OLIo1oyi0Q2pTp
	0lHBP2vTfYSsFze9LY0USxC6hCaI9mgYRsSzyWRHJb8p545g+rxiADqnWnyvDbPU
	jFs12A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4amkknregf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 10:35:14 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4edaa289e0dso21177841cf.3
        for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 02:35:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763980514; x=1764585314; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NRFeD8t+m+x2iC15q1pzZmoSqtUFKv7ocqYR/UNGr7w=;
        b=gVeLthiiS0J7voLXmPUFjWx2VO4m+0xS6JvpADcSyOhMQGTseAxSDY/8lo47VdWk/f
         xeCQvhAk9APH0VBhf6T/EboYACS2oKs3LchQHjoFT+RL02TLoYgoWb6wWvM0yz06MtSk
         pBQ6NN6B0vZgbSoJ2ursuZyJx/xiz3+OTYrgjPgTOk6IvrGx3LJuO4lHqW8aQURoVjCm
         mCegfi60k7u70nG2ATcLkIoKBRYwZVlqDU8u3GzxHb6cWCMOQpKamwN8k2rpMXsdtvuT
         W14bkiOwfeJRjByt6/sbesDrwtvsHO0LVj7YFcv9dK4zkwPBClmhpKHpYuFgMaAoVf8l
         ClAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763980514; x=1764585314;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NRFeD8t+m+x2iC15q1pzZmoSqtUFKv7ocqYR/UNGr7w=;
        b=OCC+N1z88F9U5HvyiEoKgurWdczSbtGVwTPicc5jGeq1ahMIuEe+q6FhxyTs7oXiyP
         N8G1jD32FzucddmPegE5IdoisDKP5mHWw2i3bWG1kLDnzzK9SWYzFt3wrnxYGgJcEn/I
         ZCqnXSqkOubNGNK7VE1liAwr94qCUHqhVsaN2GGdw31vTB2OEe4/PfGDzj8jWBdGOrRT
         JI9u1PmqYcsk8QvrxuW5VP3zZbRBa4EwaxguQKkfxB1ll3RKJnlYdEe4WU0U7Qvs1wkb
         fkfIptIKd6U2q3x/NFsqmEfJ/CYUY4VYozTwkr8frSqZHSg+pQvrJlnpDhtSmNObrBpK
         qPtg==
X-Forwarded-Encrypted: i=1; AJvYcCXKkvg9By8UvsWS4QMe6oZQOzuebzd1ttxRvTEj5qhf28lCTMR+rCaKXhqIXSWm87wO+tcynyj9Slw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyu7/d2EhlNpns8SST0fxvR7NAoezYQvauyvN9pQ/pZu1t2moCs
	Zqo8O8RUR0TqSa2/ZYkcVHM7SZnxagrCJ9l5OeVCfRLJPe9cSItnNjN/MtFzw0VaYDIzPOgNvig
	bVXWhL8hzXCQH+T2i9Ym5SWoGNeSPbOpYzJaVAiHg+IQDPKlFsbWWKgopIV5g90vWSuan
X-Gm-Gg: ASbGncu+c7FWjtfUKSEq6DftfcZw/VCqinzmhq0jZxbo/8XujtF3f7vL3DBwwDs4Ahc
	/hmKah6H4Jw7vjA0Jr7Be5mexrFsa2igWVwZIDZJqj6GScytK9+nYYU/8sdoA2n48YdvZ/SUJUf
	BSdgpFGx06gl2v/Y+vuXKXhPv2lsNLP+Go3ycnQwwhoLlxxvjk9+UqjuhLFhSHWwN/e4Ki6CNXe
	5YSnL3Y79NXboh8I9A+k5aJCbTqyDwEB9QzeNa9OW6XIKFVQQFrvcoQqSNz1LgBE/qjMVdWPL0s
	Efwg8UGAyN3ygIWPYZGoo8lkkA1FqExSQoj8ykaqQAqVjUbpEeyxU7+J4lkxfwNxpkqTZHGsC+R
	eWizBVe5p0q/4MOmhYztLRBaq6u3LHyJFdE3BFx05kU8wYP0TnUmfbfWDVV2mqlXlOQ0=
X-Received: by 2002:a05:622a:c3:b0:4ee:2580:9bc5 with SMTP id d75a77b69052e-4ee5883ae04mr115453241cf.2.1763980513614;
        Mon, 24 Nov 2025 02:35:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHGuDK7vWd39/xHwYTW86tNKmCUXJcUWqvNNTswV3jiprJ6NlaIWNWvKECsDQvJD5yVjRIVuQ==
X-Received: by 2002:a05:622a:c3:b0:4ee:2580:9bc5 with SMTP id d75a77b69052e-4ee5883ae04mr115453091cf.2.1763980513270;
        Mon, 24 Nov 2025 02:35:13 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6453645977dsm11813254a12.30.2025.11.24.02.35.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 02:35:12 -0800 (PST)
Message-ID: <2ebc0c92-a0cc-4b10-8d8b-cb019ec0b292@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 11:35:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] arm64: dts: qcom: qcs8300-ride: add additional SerDes
 PHY regulator
To: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
        Yijie Yang <quic_yijiyang@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
 <20251124-sgmiieth_serdes_regulator-v1-5-73ae8f9cbe2a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251124-sgmiieth_serdes_regulator-v1-5-73ae8f9cbe2a@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: BkQJLKrR0jCPSI5Noix2U9mqA3wGcbSO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA5MyBTYWx0ZWRfXyVn9WSIWp68q
 nwtCy9Cu6rAabJp8sp33zXAQmHFeqp8QLVc7ZMwKHAev/eatOQ2/ALxF8NFdGOg0+2uHUbtCM14
 VYmIOu1o3/qV7VbIxxJ0bSYHS6TfvepQjwx9ql7IzM+5ywwQ/u2l4k7J8TpBTVqlLA6BXhj50SV
 tdL0uYz4P/t1KDuYHQokOxckrulcGmtsgPGXqa7ekc/DyiiIZd8DtqQM3MQTn5sbNjH2JXHlV3k
 Ar3IU6/BkaZW+aBDqUQ3V3bxMjYz9KGLSBXQXGghzS4rfX3EGoAQFH/1lSjofhRwFStKYWJJQpI
 3jLGsJtbddS374GIS+uMa1+c/elwFxMwymeOcBK5ZUapH2/oxf5V+66aWhwzIXLSjZjknVoEtKg
 t7g+d0UDxZMY84U9UbPghP0Wc55yjQ==
X-Proofpoint-GUID: BkQJLKrR0jCPSI5Noix2U9mqA3wGcbSO
X-Authority-Analysis: v=2.4 cv=B8S0EetM c=1 sm=1 tr=0 ts=692434e2 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=mAYSrJZFqx11qOWNMfMA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0 clxscore=1015
 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_023515_577076_FE2610C3 
X-CRM114-Status: UNSURE (   7.08  )
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

On 11/24/25 10:25 AM, Mohd Ayaan Anwar wrote:
> Add the additional 0.9V regulator for the Qualcomm SerDes PHY.
> 
> Fixes: 787cb3b4c434 ("arm64: dts: qcom: qcs8300-ride: enable ethernet0")
> Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
