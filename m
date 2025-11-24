Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C100ECFA466
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 10:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0bk3jsSZWQO/T5uOSBNZL9LCIbVYOfdxchFVqTAQzEk=; b=RY4AzFCQDZLdw0
	Y+JNP9mJjQlAuPi/EDbfbOamV10KYp2m5o1RPulNiCJKKH86FlWbl8mH7+rstRf2Prf1jqx8a5mGb
	DkQcJ5Re5hCayM/i/6DQ+8F+dMnsycIYYHD3vqU1VJqwcCJ9BcOjK4XnkCPiP2A7i3M8CHkbnRV1V
	efHuNUSqnv5l+Hs1nMpv2R0gY8+F1dzSjDDVFjYeON6MSFEzfUz1DcCY+/VUwu85RELunpq20OvR0
	v1nF/eTXf+tq3YSmWiISLqBY+2IDAdTyjdYRqzKKa53AqYs1t5sVlp3rZNupVWmqFqW/HAcjaeElZ
	ifdj5b348ZRr0dbYg6xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNTuY-0000000BQrk-2E1S;
	Mon, 24 Nov 2025 10:35:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNTuV-0000000BQrI-3dQk
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 10:35:09 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO4vsiI3581889
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 10:35:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AdZDb/iq6LyoJ0q1NY686SXV3zJDlxna6I3nChlzhFY=; b=Q3wTCNGjmHqs6aE1
	sktYunB+pfASFqEPFthURi+1f36UXUcApxTj5WpKSDXSmhZvWhjCGc0ukqW+T+Vz
	xi2i+gVypzsKPQjTaLYxx7zKQ3A4lFGeu2WD+7BjtKSnrnwygIlNYPiPdu5WaiX8
	0b/qSQDSWBxfFXfvFlyLFheAbmArQ7NPyV0kdE4Po9WLDJfYO7gK+I4tFbggoHzs
	NP0u86a2+6AVq3S2mbDCmUxOas83QgJFUhKCpQiiLBJMHu7YpCLMMVa+b9x4BeOs
	geC1PDMTe1rsoyF34YR8Ki61ShKUAda/FMxwi2aiph4IH6ywIc/cVCDKAPxVfQGj
	WkRuDg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak69smn27-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 10:35:06 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b1be0fdfe1so177189285a.2
        for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 02:35:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763980506; x=1764585306; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AdZDb/iq6LyoJ0q1NY686SXV3zJDlxna6I3nChlzhFY=;
        b=Zm0wsITwzuSdeQXdhWI9c/6tbXehwEXRMGBMMSlSkJo2ZuuDH7DllWrXHeAPH4Pury
         OISzeTzcMZLSR/ysIn58HfswkuKk5ASFVFYDINSb9FFIGGQSUq7qzVdvo6ic126A0bmX
         3LA/NYVHfMpA9bpBkVc2JJVczSTTG4LtSPRpFrZSzVyRpUKY7N/5pjlTcOk13SaWCu9S
         b04s2UXcHbOr7vDbSSJSIal0SXlOcQ5W14n+jN9BbJK/p1+/wR0KM43qV2D91X6zkRkA
         9POhfJHYLYoSo+JUe6GB6vk9sloC4LLQ15R9Wv9vLslZq0I0R0Itxxaas9zkMNJUAulF
         ZrYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763980506; x=1764585306;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AdZDb/iq6LyoJ0q1NY686SXV3zJDlxna6I3nChlzhFY=;
        b=Dea1q9PPEb7wHJAIm2A8Ei00OPmCP1MVBRuqlTDgtEgMMiTNXLVwA74F+hOBDI4EbA
         ISYUgy5aCkFLmRq+/u2fXFLgDJ0GnYhCqLGpfjVfNdFMWglIwFg59/QS80Mlz3A5oZZo
         SiK9ljtpEgyVI+TE3HDPFVedO1zbxHh+2wCVwIGQ0pFef29VknQYEy0dJEWhlIKKDGkQ
         QOaMFIOk/30YANPbEvf9kHlaS8rrFJupfwPH7j2wqJAsG/wbMPHaBnDoOb8bVSVYO6GH
         Bwyu7ED4rsm5/AqjN8pEEJqozieqSOUS5ne7I5gv//ZdTTgTHlEn3dr1eQ69MTcyj54B
         g9Ug==
X-Forwarded-Encrypted: i=1; AJvYcCX6ONJxkJ921tAYYzgI6Mx8Wbji6OIfW+ar0NBlQ0yr/7oRw5L9uuZvYFdOroYaxCGddzrTVZNmMlg=@lists.infradead.org
X-Gm-Message-State: AOJu0YznOSsHKFg/KTF/PpHIbX0mB5tI1vffu2BiOh3+HK59POZVbeF9
	fUAGuS7tA7gUH9R7F/ZurVg2IjLuMxq8/PPQhufX7/eYiR7hTWFGINNBpaKc8gI9Xx0TZKSdPlb
	djJnkwmrkQn++oz+NE5X5eKEziin+pM3i+xWBA+VwHO5HbNwRo0npjDuyxeNFkGbWnSKN
X-Gm-Gg: ASbGnctlRpOMt9oeRHpKII7NVZ6a0dn+vLv5koyGIB432j2HwScBJYGsTtyZXBNxwwE
	bxE5FnJmISCPkACRUMF4HcLhnt2brkK9p7jdFtvzvC2D31yIIusNw+mSY7Y2/qSrTdd4cOT3thZ
	N9qyOzkvE8GqZSzSbupARGynnnidpULsPGfd97D4rwA0qx+hVuEG/JCFUrbatwK40zFKWcddDIe
	Sgp7R758x2YYdKmtFiEvbiejBbwGbiU/t9F1Ca0g2ksQk0d1DwKuaaO0laoaH0oK+Wy8j7FEKNa
	qxAS0ZSHxo8gxMt5TeJFUsSzkU2PbBepDAOymnRK9BXSofZuz/87stn/fI5mQ716Jj4aL2xJgSX
	txxM5Y7hKvVHKmxB9BdBA5IC+vFzCrnXR69LKOzjf7zHYCrfgLB+sVr5dOnwTZqlz/gA=
X-Received: by 2002:a05:622a:1447:b0:4ee:1db1:a61d with SMTP id d75a77b69052e-4ee5b7272efmr95407901cf.3.1763980506245;
        Mon, 24 Nov 2025 02:35:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEnawLLakIQuDOxIvuZbVFALBYPtEcg0Igdxpi+j+gVarrGoPWUbG9mN06DefnoybfsgdQsOw==
X-Received: by 2002:a05:622a:1447:b0:4ee:1db1:a61d with SMTP id d75a77b69052e-4ee5b7272efmr95407631cf.3.1763980505805;
        Mon, 24 Nov 2025 02:35:05 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6453645977dsm11813254a12.30.2025.11.24.02.35.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 02:35:05 -0800 (PST)
Message-ID: <c732d44e-3282-4d93-a693-f0efdbcb9091@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 11:35:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] arm64: dts: qcom: monaco-evk: fix the SerDes PHY
 regulators
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
 <20251124-sgmiieth_serdes_regulator-v1-4-73ae8f9cbe2a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251124-sgmiieth_serdes_regulator-v1-4-73ae8f9cbe2a@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=PNMCOPqC c=1 sm=1 tr=0 ts=692434da cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=W-RQcwYIOX4xafuqNJMA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: j-vo0uKlqH5zQXDyEkqb37d_la8X7KXW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA5MyBTYWx0ZWRfX+QsvcF/zVRkn
 9Uk4Onbv0C2UaKXUvEprqTWnVRLk00NM7LCoBmTxIhk89p94i3p1dByWz5Mipiq/RvV/8aLFfIM
 9HgffEI7fAeyLxKGb2fpJV2ttVWzg9QaO/lXN2RBpHxpP93KxGt6ROVF2cm4E48tN1kSXo0tbDu
 CTBqGHhzJVToQZdYDKE5tUFRDGR8hQZs4lwwOC0wouMbhRXwOdTRk7Xjrmsf1OBNjf2t1fd7duc
 4sX+abe1t46+KQRApXPj5L9rFvRN3tJpjCViEJtjtTFUg/bBvoIN5vG58LYS1GpppM4nI/yIeTe
 65/YZKu8N2DD+agltfwNQBcjzhf8L9XHSjE/vBOuzsERQhyjsuxCHIo5LP8Mv6R06wkqk0QWY/N
 BQ4Vg0nay7l6L8jc6oF0O3wfNnTHPQ==
X-Proofpoint-GUID: j-vo0uKlqH5zQXDyEkqb37d_la8X7KXW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 clxscore=1015 phishscore=0 suspectscore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_023508_036207_71E1F23A 
X-CRM114-Status: UNSURE (   8.71  )
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
> The Qualcomm SerDes PHY, present on multiple boards, has two regulators
> providing supplies of 1.2V (L5A) and 0.9V (L4A). Update the node to
> reflect the same instead of incorrectly voting for only L4A.
> 
> Fixes: 117d6bc9326b ("arm64: dts: qcom: qcs8300: Add Monaco EVK board")
> Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
