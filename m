Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07C65CFD317
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 10:34:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HJC6S6Yd9ncKehMdgHQ3lt/4qumkf6Lp+++S9ceVDyU=; b=oSiuEh6u5+AcWa
	H/ASdkZ3SflFyGTiAD2Q7M0u8jmgC8SSXnn+BxKb5p0D0aoubV336/RnblxwMQ9WZP5U+m/xjWDMK
	XVH0jqUq7vsufj7L3vUaj4xCJ3kbxuNIZq8xBqTqX0XVxYSccH91/YXws8lUIKK+/1491aSzUHQNs
	WsT+rrbTMDlEsglQ6VO4FNmhqpqrj5GAz0ReFKZj5ZAbtPxNG340CLt0PCblP7+P8IrrCKcm2KRfI
	vnvDBvyk77ZHdt7LkNHLg6e+seXsJk+BRBUD/xcAvkkOJwVQwY6giJqzKarLdyx7+dTiNQVVt4ZNs
	8JCJ7g0FbcpFkhyRc4Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNTtr-0000000BQn2-3H5h;
	Mon, 24 Nov 2025 10:34:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNTto-0000000BQmU-0op3
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 10:34:27 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO8BBH92302222
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 10:34:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QIH1XPwnKDylqY9n8X9ouxIff1wIEZS+4yc8x1n26mc=; b=SVDafCklLHbGIJQl
	0IHJTWVlwr4Oavf1NjYnKytOBR8ZTSDnZwOKF62ZN75+Dap+f/Q/VYRr5MtoEeoz
	38fTe6Yi0MAvQEl+DrIzVNtWs3whsmRbWlsrimUGiHEe/mbLEKvAnALKy1D4YTxD
	Ya6ML5NT7JsLxTpH0C/mhYC5ACv6VEJbnW2D50WxfL3COMmicHE7awEsAQVFC1V4
	s6VvwGF690d+p4TAA4uTO13hrGMKsWFCUbWArTwoTz0FjY+DdqGq+AEeCQk98DEr
	7eaVRN1I190HW7Efur2y1ihvVb5SSIngrO1oeTr2U9mGvwHMTFXv/7z1yTsnaUzm
	fDATFw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak68dvnb4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 10:34:23 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4edaa289e0dso21175201cf.3
        for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 02:34:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763980462; x=1764585262; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QIH1XPwnKDylqY9n8X9ouxIff1wIEZS+4yc8x1n26mc=;
        b=fTDleNzJYRZf5WzW4YhXxdelnSaVt5nATPDhqMQzJG4VcMqcrHp0EDbfVthxMKsxPg
         cWIoHhED9lMGsB4bSgAsc+MyOob91s0izRgOBamL1m7+my2cYFl5YfBedDascNs3aEGc
         bvDAywjkIvspKcE7yEzzaGBwQpSF47xWBhjpTxUR9YvGCd2Cv8wW45exEaS44da9PlL4
         HCP/bGqJ1FZVmGtN7Mz05phMsSc+WdqJMYpsH53Q3YgDdUhKFwkRANtoyAeHhqpHSE2P
         QzRA2oQKJwNHAFEg4BRBZxMrJzArc+ZrrI7MnJek8yocaA/35qL1Vyf81PYNAtYFsjSj
         7FUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763980462; x=1764585262;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QIH1XPwnKDylqY9n8X9ouxIff1wIEZS+4yc8x1n26mc=;
        b=ZxKMMzjtSLJ1TxGkiKp9Vdh7UwUIJIz+CHQn1boCd5EXUckgBIODtZIUArNm6ox1Dm
         PaFeSzerz9x4Gd/s7jKi+moSczSHtZfnUBJBkIsy2D/aoKvWgmmiKnrfBrp46gDlRIlJ
         xCDiuIBci3tdJKB339yoDcsH/NCyTnoIVUxhoPqUcxLrCPQU9s/02IXmAkW9oAQq2hkX
         HMQDK2whwEDG1ig95tKUwnECexM4eR547sVeMlanLhpUktv3EN7sQmfCqjqX/8ioOxAc
         U/qxw4WOKKMoDiml3EvHNJXKhvIuNIqP0ajDTkwjQk3F75Jt5fwBOKpZzKquttO9WLNc
         6MJw==
X-Forwarded-Encrypted: i=1; AJvYcCX+WgGVoIINRWlpOA3VHn9u5pdSMTOw3FapkdI2rxRZFjSUQZTW3oTu5edC91gP/+tthcT8h60ueGE=@lists.infradead.org
X-Gm-Message-State: AOJu0YwL4xZFLWrls8hs1dHcIhBZQ9D++WNdoFiqZ2a/P2Q0lXnvu8CO
	ynOfJVX5bXuvcz+lAeghko6m9XQIB8a+J1cWSmXbwxWOPpnihMK+EQkg21JatWyemzftyZ7jlUv
	zr90aaxFQHpG35hVoLQ1xZ2HHy1egRZc4rbZWeHIubDBjOyN3xbgXTRE0wmUGfbw/2CB2
X-Gm-Gg: ASbGnct0LKTkMfpKGk+gwXVl+TGA7TNwElUbfVHfUacYF+HO0Q83pEeAobV8qP4jOet
	nyJz11YScXcrCY9+07nhjurdbrpCsA5uzBtmqLVp0WgKsjuMIofVlnM/bTUwcM+nnbnLXwibjQ2
	OMhhFID8GqNUCpYhC3LQQRCL6pJ8UIr9esBFes8++djZUhwy3ZPF9f1si+syf/K95SwP9qusGsq
	ibB65ur1oDXszC9D32hZuxfUhZXMttmVjMS01u2yV7O0SOEXQIODstD0KeS/4S50VuRLGisT/Cv
	Zco/8eKEN0kwLuLO3xgghL4xFCcgt14b5g2FI3UkRBjrUTOs/MUnVG6Kml/0zTmlAVCLG99G76g
	O9mVZd1jUVHKN2wliEsH8Vd88n7Buk0tN7lGuMHKarx/7hDw0HqCVo1RIVIXcdiWvYds=
X-Received: by 2002:a05:622a:1a23:b0:4ec:f9c2:c200 with SMTP id d75a77b69052e-4ee58942597mr109572421cf.11.1763980462632;
        Mon, 24 Nov 2025 02:34:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGXPrdffY1SpUaZjhwt+7of2MS6E1CxsxoyI7yl4kOk8de3aoY6/1Kpd6aApS1uGW5T/ZXioQ==
X-Received: by 2002:a05:622a:1a23:b0:4ec:f9c2:c200 with SMTP id d75a77b69052e-4ee58942597mr109572231cf.11.1763980462280;
        Mon, 24 Nov 2025 02:34:22 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76a6bcfad2sm271702466b.68.2025.11.24.02.34.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 02:34:21 -0800 (PST)
Message-ID: <97396d4b-69ea-49f5-a8a2-c5c685e93722@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 11:34:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] arm64: dts: qcom: lemans-ride-common: add additional
 SerDes PHY regulators
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
 <20251124-sgmiieth_serdes_regulator-v1-3-73ae8f9cbe2a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251124-sgmiieth_serdes_regulator-v1-3-73ae8f9cbe2a@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA5MyBTYWx0ZWRfXzMHZ9sY9ISqZ
 3L62XpqA/idQkfqWW972UE+q7q+lmfLNaYXU3ld/nI6XZpxDazI+8ikWR+/taNQXJeMc77oQ0QT
 OodSmUGl4b/cYW23tI6qZjYjOn10MTCE/JIfm+FvNWPbl0Mr/AfzZe7W2Q/0z9gKH4uQru6lxlz
 ZbRx4icpNI7gtM3EJPEfJbEOzdTV4EtBcAAUXJBFYoc/pXxcmfDa0ZSSmbwn1l8T+C503J7QcfO
 R6p42/kvS5ne8lxBlUEUyAAFi9MzWpysMptrKtIekWJVjDIT6OV0YsSvmTtoNmTD8HIn29ltO6N
 uQRUu3HIPwKT2gH1f17+6iD0QEBT+kHb/jmxDrdeY1cLEHRvvojPR9F9NGyijrf3jqWmudcQSyO
 gWhxnVaAI3zYincp+EkqgA0HjlUA9g==
X-Proofpoint-GUID: I8pdxWrLvL42l5qsnv69m6sbLxJiIDJ7
X-Proofpoint-ORIG-GUID: I8pdxWrLvL42l5qsnv69m6sbLxJiIDJ7
X-Authority-Analysis: v=2.4 cv=UsBu9uwB c=1 sm=1 tr=0 ts=692434af cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=mAYSrJZFqx11qOWNMfMA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_023424_245431_69B9C175 
X-CRM114-Status: UNSURE (   7.17  )
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
> Add the additional 0.9V regulators for both of the Qualcomm SerDes PHYs.
> 
> Fixes: 5ef26fb8b3ed ("arm64: dts: qcom: sa8775p-ride: enable the SerDes PHY")
> Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
