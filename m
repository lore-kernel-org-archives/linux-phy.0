Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B7B6EEE250
	for <linux-phy@archiver.kernel.org>; Thu,  1 Jan 2026 19:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WAZoOwoj6R6149ndUeDG9orWksHhSJGhAO+6r3nF4SE=; b=JGdyasKYOfhP2R
	Z+xy/GMKHg1yhYiHtUbpCSOiiPtP0IJU0IRPdTncXV2zdp1S2r5g+aST3cDEfu64VehyJDXGE9CGz
	qageTW20breZzF7tolnn0MYUJsjHBjnDozxLcVO3e/J0a1YSKUGWEM9G4ntIeYMdOwacQrxb0oDem
	iq2cR3NVFUu6MdW2fkLAAGF8ybMKfSx3Jkngik0foGw6o47Uxp7xc9FS0We0GUd+aJKjZN9f20vpk
	0g3ZwfJMnKGNQQu7dttgIoNKIbhbTXRYpfXSiQUfhrhBjidLzT+WigskLb7mG4NNynlHfxLyncEso
	Y43dVFHkS0hPCVaKgvxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbNwy-00000007Rtt-2vm4;
	Thu, 01 Jan 2026 19:03:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbNww-00000007RtY-0tPm
	for linux-phy@lists.infradead.org;
	Thu, 01 Jan 2026 19:03:07 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 601EMVeo2257973
	for <linux-phy@lists.infradead.org>; Thu, 1 Jan 2026 19:03:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+QMKwEVC7Suor+bYorU6lSsj
	bvDGk1qiJYr7KsqFwEQ=; b=DVk5OCmgh6we/gApUU0oj6gT4khXU52t75L5AuaW
	zGZIQptxgfMCq6VDx/pC4ailine5HN19W3s7r0i+Ou+C7rIw4/thOoTJ4uKFEJ9N
	gyRxHVG+WtkXI8gcBy9FqyYLrw2kbCl3ESUIiKhhp8PvYuU6pCXUE9Mab39TU2zd
	N7dAtKeLfLaLvQ9cHNQEo3N+zXb+/tYSbrFciu2nwm3k7V4iggRR9xSxLxymbhwI
	jOynhDD3Zy1p0qVdw/IP4dWX81sKWEdcrwbCZrj6M49Wh14nlcti43tDLGSxAjm8
	Xbum5Seu7LOxu/hJZMlAfx3J3WyeGljVOrz5CP0e43HJbA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcy6aju92-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 01 Jan 2026 19:03:04 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4f1d26abbd8so349873711cf.1
        for <linux-phy@lists.infradead.org>; Thu, 01 Jan 2026 11:03:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767294184; x=1767898984; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+QMKwEVC7Suor+bYorU6lSsjbvDGk1qiJYr7KsqFwEQ=;
        b=F8wppo1cLTezu853KN40gVMs8FpGnflzT0yeD2hzHpiIrad3ZzYEkogvCP0tLsiuO3
         BUt37PeS8RB1o04hHXLmH1gM5pQB8K4RvicU4xdSxtOhytFVZ0o0yrDRH5EWE9wiyJS8
         0d6rhkwzrzRxchaaB72SZk/6fV5XJ0/fb9zOjaCpbEPLKHmbf6ziwBjKbao1KknrEmBS
         fRMjgRAqaYiOJedRrxxc5cCYz8MqLbBeMKBlGFzTahRPl9UU9w5ikar3yHHatF1MEsuo
         juJAqH/WSZlgTldvA+kzxUiizgGlz8Q7KIeRwa4BSY3WSFjo+cjo2eTVVtXgVUlCNlvu
         S/AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767294184; x=1767898984;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+QMKwEVC7Suor+bYorU6lSsjbvDGk1qiJYr7KsqFwEQ=;
        b=eKGJHf3GSmAjtYFqNFIREJpL2tKfPR0ZwhB+N7pOsQHa+VcXvKRvbNKkLkI0bWVzGi
         OpimP0pgei1QB26+AzdnX7gxjv6ERJpSRlKE8B3kOLDYXv91vu8eU8HXA9sidWDVvIpS
         Xu83UxuXrZY2qp9babDjJcxvZ+95KusLXPCUQNFXmI0PoDYmrDBxE1MaAEQNXmMjV5iG
         EYg+psIo/I4gMlRz/WuMbU3y2+4WNAH2TcDl7Cm6I1Bi2skNChxusRWBq9pKAWlGTsXj
         M+j6m6ptdvlVV/nPPNDGGTZ2E/EPD4/A6k1AFjs2oiQKvreYRd80fJEPIXt18vboiCCY
         FrbA==
X-Forwarded-Encrypted: i=1; AJvYcCUXCIk91hX78lcpuRVi51SP3Zb4wAW2VdaGBONfPQWVsxzWyQg3z8fweq+63/xAGR0EeWeNB9js7wI=@lists.infradead.org
X-Gm-Message-State: AOJu0YxeX/8d9ApacEUDNIyUqsgKn8H+nGznNLq8TipdIq2jUO7RIS06
	m1wSRh39LYtbM+tjO6i2ZNWQSCYCsm+vKBPOY01FCviftV6/rUWemkFT7F8+tEKiF3IgIp0Eyri
	sdQ4eF1a5XvGbFOBN17oOEl6naDGsgyCMLrJdVNDHdn9lB5C0D6dW6c//5+m2gWpJd3qj
X-Gm-Gg: AY/fxX5pDHBC2zrXaUh/Q50/vjhYpHyQ1eeECCHGnK2ngFCdoskVMEgpM3fI3Feb3Rd
	XLKeGbfarJkH7lEQ1k+ZBCKgHzEG6WDSmpwnPH50AmWBsTDdqm+eSLneoK3h9+kEC3ZWMgaCidu
	ZbaT4qFgB6dDEGQbquNfAQb3rHzSUGZvRemJ2XJvCKfy2TfLhe/VKQy2t9fI0wJ5oIcFxWk7E+w
	Ggp4PbIHQopuZgauiS7rZN8H7srxkSfHU64tIB5JM8UuGQ61dvGkDwxSnszLP/lo9byo6NvBmw9
	/Ygs10q+hJAaJFYTyWCo4e8EZTEtjzgRfQ+6CgSYfW/8QT+HjVzV9oNDr90KZESMw5/b5nptVTH
	KaXfW09ft0hxPcPc2XrDh
X-Received: by 2002:a05:622a:1b29:b0:4ee:18dd:1a1a with SMTP id d75a77b69052e-4f4abccee92mr592914631cf.13.1767294184269;
        Thu, 01 Jan 2026 11:03:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEbz8D62YVcxQdedAk3k/DyH+ejsCG9KzvNP6zqm8qsDsaBqLCPblpAAvfwL/lYPOD5YCY0jA==
X-Received: by 2002:a05:622a:1b29:b0:4ee:18dd:1a1a with SMTP id d75a77b69052e-4f4abccee92mr592914251cf.13.1767294183805;
        Thu, 01 Jan 2026 11:03:03 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.10])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f18575sm4226918866b.54.2026.01.01.11.03.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jan 2026 11:03:03 -0800 (PST)
Date: Thu, 1 Jan 2026 21:03:01 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        nitin.rawat@oss.qualcomm.com
Subject: Re: [PATCH V2 3/4] arm64: dts: qcom: hamoa: Add UFS nodes for
 x1e80100 SoC
Message-ID: <gq6twkddeshvonzuyl4jcp2bsy6wzsveed3figx4sxeatrr7qb@ulv3d7dust4j>
References: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251231101951.1026163-4-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251231101951.1026163-4-pradeep.pragallapati@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: -cKP4lOPhYMq3cxiJWa8OGODSlSjt9ne
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTAxMDE3MiBTYWx0ZWRfX2/viDsIeFR6e
 xuH7C1IlAyn3LiIjHfwFsn9mviOt1w5N+O7sbPTcP2qpC6O+1ezwgWf2B/CZVF5q1BT3rCuHAVN
 VfRtVdI7RJIQ3hoiuoJBy7EB5wIfiaiAugBiIqngmz61ocUKbcUKV7MQv4OSbb3fUwJ3BDBmaE/
 sloYahTrK4IOGUNtWZyrTi/TUoi2Nf0inwtPHZfVthlxGTzQZXJ7sGS49tmN2qfbwEW5Gk6n8mi
 sShi3f1ATTKnMX98hv7/O96X6WxsAU+uJ/0G/bFANFymdm9K2FTtPEUviVJwwjcErzqGSZWzgEe
 OZn9ikhtdPKlsqhMPLYchaqv3Fy+aJ5z1WnUQkhx+XJ0HEF9Ce73o8DXQCJoe2L6XNeOTY/8u3w
 5s/WAqAEYTWVQwX1QhSPxtiUz1iguXC/Wjgnfgc4P+rX2FNV0TdllTbfyNB3myJ2QY9j+kHAovY
 GJWeBpUV7GKfdHn+3CQ==
X-Proofpoint-GUID: -cKP4lOPhYMq3cxiJWa8OGODSlSjt9ne
X-Authority-Analysis: v=2.4 cv=J9GnLQnS c=1 sm=1 tr=0 ts=6956c4e8 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=hZ5Vz02otkLiOpJ15TJmsQ==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=P1SvqDdPwG-YsO9EcX4A:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-01_07,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 impostorscore=0 spamscore=0
 suspectscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601010172
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260101_110306_371601_292BB3CC 
X-CRM114-Status: UNSURE (   8.95  )
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

On 25-12-31 15:49:50, Pradeep P V K wrote:
> Add UFS host controller and PHY nodes for x1e80100 SoC.
> 
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
