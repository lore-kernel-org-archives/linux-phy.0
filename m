Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96B67CFD31F
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 09:27:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JUSyiNHJ4v9u2MvB1UNg/f8dobE9o6oEmTki2YuF3jA=; b=zBJzDc4MUxIaoF
	jRTCV9YS7xKiCJJtil/jJ2ppg1ZZ805piBavUHy9HIiC8LPTFWsG0WhrhP+wN0rEnY+RMOIGhJypt
	5CG9S1CO4nRu1uGpFHJ6HSQrgBOLrAwSqEiUVusVuPfci3OPJxmjPNSYCpGkRJG6Es2EV1l4Evb9L
	Zk1txlvmXyfT2vfHv2ve2f0gnll+MOJ54PUIOYVnQZBQ+/boz0ohvXpKqBYIAQ8OTrkZtIBpO+xim
	JHPdS3nQpzd1Odicw1A/o0WEUeSfNW4N4NBFOf8Z702ruD8WQfFtIc4jRzURJ7ePEBhUi7AGWhbBQ
	9lYGz9aGRU3L7+9IR3Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNSqp-0000000BLLh-1Y5G;
	Mon, 24 Nov 2025 09:27:15 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNSpv-0000000BLHS-2s7C
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 09:26:20 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO7TJYu3112272
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 09:26:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nxFrJT9IxR5RgsmEq2Yv201BcOfg3J4fzJCqGDcE4U4=; b=Hy9jf2wGb0qKqWgh
	nYAbQUiz5AhXOR01OtTBDp6k5fQL/P18betTdm/rZv7pRToOnl+7idyrZhKUMakg
	p8p8JljUP0DZg7xvZOyo8ZU+LLkJOdPrhvSOhTuUUtNyu/R6qKk7sUcI6ag5wvCM
	fr2d/f2tcwPstd8PuGRTSwkEZb9l4AP9NctUQLo7s5qyqcsbkbOq91aZXDPuRwtV
	P/MUERNCKiQMFNee3WR5tkl/PnsU22gByY+oZjF9dSDSa4BPmaEh1G2nJa1MGYr6
	qCD06ZomqMpjgwG+aM20eFu2lKqhITDiTNn+baxUR2qPyvB94X25kAQUSSYZ/roA
	thkJUw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4amk10gbw1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 09:26:19 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2980ef53fc5so125617705ad.1
        for <linux-phy@lists.infradead.org>; Mon, 24 Nov 2025 01:26:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763976378; x=1764581178; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nxFrJT9IxR5RgsmEq2Yv201BcOfg3J4fzJCqGDcE4U4=;
        b=SjNITMkNBUfbncWs4AbvzE51ZGZMOt6uPED52oRuhHNLFFHAS7MvvtJFI0g+R979Jk
         /v61wHJdPedbgwPoc7x1KDtD9DoC/hC3RofXO5JeHouV9TD8m9VW/k4gKzZR23i+VWOx
         OfBd+UELEvBA9xEMQweXOG445nh8pP8eb+aZlsGR6gmAzhC8zdOUiA9Fo44Fze057K1W
         HYLsrSAIL4TRbr8lunFZfZYWdwGmJ+3+0H+r+dDP2km15BOo57wClCf93JlBJuZhlmar
         fi/WpKJZfSIdMSywrmOSw6Yz02kVzA8azeo5/Vko/pkI0jstuzrKrzK2MMa8ZmyWQguZ
         KT+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763976378; x=1764581178;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nxFrJT9IxR5RgsmEq2Yv201BcOfg3J4fzJCqGDcE4U4=;
        b=dUjfa7YjuKTsXwDVZ/lbA2CvmA+uBpOW8p3zY32dNHggouUIyotU3NdTbPlOYfuf5e
         a7DZoSmSAiHfdx1yJSJ2cVtuRbt2qpeznD1tkvEQikoQ1rHXZO2OvTx4+MjdXv6FrMpc
         bujy772MLRgclKSVOu6zlP3wcu6PWHXZQZvZ4DGNZsoGsy7d6kB+WSS0V+DfRwjM3XLy
         fNLH4NQo3kAaQkKeADv6+2j6lZJnGs4m3jrKFCTUhxo1kUBFgsmpG96rJxdFYu9VHywe
         OOgBGnJMsaMZN2kV+8R22Hfdltwy2yBe+KvgZrQlP4P1Ignuff9j1JQWSOFY+u14vqed
         ZjRA==
X-Forwarded-Encrypted: i=1; AJvYcCWgSCKCYbh5vfcbyrRM3lIQMjksgpKUAsTybxbTb+DyyaZwpG1Sp/fXmEDgrL5+MhLC3IYhXax5inc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzQPISYx0Kgjlq2hPJrru7HYz1QY3MJOVTIiKQp051GrWPxeOfG
	TTSVDrJ+gv4TJbx/o2XKBKV1sUHnEHTAo9xlXT85hJx6v5nIASKjSuyyHYmFqaj51Q7xlr9szoo
	OMeFTmCnsJA9V0zHzm0alIyXsABpKcEEKpHT+AzYny98B0apwEaqOLTMmiFHwhEth8Mu4GebSTE
	f4
X-Gm-Gg: ASbGncvkydlKoieM0oz68S+g4UH9DC+Kx7YdLKCM7hWXC09U4xxJVmAqSMokQUY/z9Y
	N+SwX9Ab7nWdzRQRKJjX0eVO0I4RbPAxBNzFK3zi990Mu7olAaPl9W5gRwrpxfJK74cjOT82ZGj
	vvDgAw0ijheRdiitfEYNXhGp8GdfqE3t2djsjbb7gUF2ifs0oWFEg88rHGdeX8DC7wsQJazyMyY
	NABLWCODden5/M6AsYTJGLUJsleYOR1pu93kR6Z8sm9/1s6fU3ZSwRM4urmP8lQq/EHrxWa0cAF
	KHjJH22Iab+ssFCb3PNEK274tDJyqQ8Xn7sABeUTzhtIQFjIviDLTWhzApIu4GE7KHzhrQcZ1Md
	ACj16fFYVAWxuhGEzOqL9v2hY/GxuqTx04cQa8PM=
X-Received: by 2002:a17:903:2f8f:b0:299:f838:a279 with SMTP id d9443c01a7336-29b6c3dbdb9mr125084615ad.2.1763976378468;
        Mon, 24 Nov 2025 01:26:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHVKS47CYaCpVeev64lH6ypse6CZ4vQkWVZ0fpEA6mOPicVdZZ5978MvuPZlcDcCwpDpE7AEQ==
X-Received: by 2002:a17:903:2f8f:b0:299:f838:a279 with SMTP id d9443c01a7336-29b6c3dbdb9mr125084215ad.2.1763976377875;
        Mon, 24 Nov 2025 01:26:17 -0800 (PST)
Received: from hu-mohdayaa-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b29b1c2sm128444675ad.81.2025.11.24.01.26.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 01:26:17 -0800 (PST)
From: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 14:55:21 +0530
Subject: [PATCH 5/6] arm64: dts: qcom: qcs8300-ride: add additional SerDes
 PHY regulator
MIME-Version: 1.0
Message-Id: <20251124-sgmiieth_serdes_regulator-v1-5-73ae8f9cbe2a@oss.qualcomm.com>
References: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
In-Reply-To: <20251124-sgmiieth_serdes_regulator-v1-0-73ae8f9cbe2a@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
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
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763976350; l=756;
 i=mohd.anwar@oss.qualcomm.com; s=20250907; h=from:subject:message-id;
 bh=H+Z0+XjWbKBcB+TNCtzvlAUmuPti/CbVgPsapvzJ370=;
 b=tylKaLunFc7025Ni3KNZ/q3cvr2PLeisWqLHA1cFzR7039Ufd9vmR8TEti62QsKAMCAZt7sTi
 emWMCWhb6xqBEZF+cfJa5GpR8fubgaMrDDr1D0ptQWYLnRN1lkU3mGK
X-Developer-Key: i=mohd.anwar@oss.qualcomm.com; a=ed25519;
 pk=7JNY72mz7r6hQstsamPYlUbLhQ5+W64pY4LgfSh9DJU=
X-Proofpoint-GUID: 8RlmKC2QUq3-PuwRod4w4a4sHCTOs8mV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA4MyBTYWx0ZWRfX444ggx3cWGiM
 +Rp/wss3yyiG09j/XJ7BHvGgacaDyiiC9VvQA2Yi4aMdvshVAHzqpMeMlApCYF260ufePOuS7Mi
 35I+pTMk+F3jJh5wG8VX4AepoGJJJWS5KyLYknap+xFfOKFZBW5rhQoLDldgrD40XD44SJV+Ttt
 +90aS3Tzqk5O1PhVHSVMmyAgZ+8A2QW2Nz+CrAzNjfp8sAn/9OVHvn0yfIKg70O2CwJD+07JqhQ
 rQaE6NIEqqA8CDQq3AsskY11nbHW9dU4mwKni6EKC331xCzzv57jfcSRfZsqoItUK0AbP7doBBp
 C9DyMLWmuE3GVdlN3HNZsPkWx9fJ3/X5WxM6y0JaFTeoNJnhkKHRtWZ8sDZTVRr7vLsY7Il1m7s
 nKE2EhciWo6UdzGhFiSmiAI7MOVi/w==
X-Proofpoint-ORIG-GUID: 8RlmKC2QUq3-PuwRod4w4a4sHCTOs8mV
X-Authority-Analysis: v=2.4 cv=SP9PlevH c=1 sm=1 tr=0 ts=692424bb cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=9SjQZKpPHDDCJ_mzltMA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 bulkscore=0 adultscore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_012619_731485_245DD646 
X-CRM114-Status: GOOD (  11.08  )
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

Add the additional 0.9V regulator for the Qualcomm SerDes PHY.

Fixes: 787cb3b4c434 ("arm64: dts: qcom: qcs8300-ride: enable ethernet0")
Signed-off-by: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
index 9bcb869dd270603a34221b905f0946e8af028433..66f60146a7498a86dfa2cfc0a75e3dbc540d9684 100644
--- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
@@ -338,6 +338,8 @@ &remoteproc_gpdsp {
 
 &serdes0 {
 	phy-supply = <&vreg_l5a>;
+	vdda-0p9-supply = <&vreg_l4a>;
+
 	status = "okay";
 };
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
