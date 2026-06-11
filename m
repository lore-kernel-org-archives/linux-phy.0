Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 534FACD98C7
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 08:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qs+FMK74HRKJEVJBBTvxBlT6/qL5+Z/JFde77/kuix4=; b=jia+n32xTLFS+a
	yuoODQrScpQdXbTmgSw4iQy3/stOYdOVXVix0aXyKuWTksl9WGkaDiVSqESR8xPEOTOY5Wb8hQHRE
	CcxoiBf4AG7aA4SKCAF0MRST0yApM4Ujh991Af6oF6iK/gUvFrEEtkWoGBPYKEQ4MQKbrLFnstEi7
	9pgZWQ2NOPGiXQpRItKYJWH1IuRe8hBc8j47eKBxWFKVHtoYvIK7Yd/tnpoIQOpzk5mmXMdPqERbQ
	YIiDNeyLVq/iQvbxTztNJAHYH2G17m/Gp/3J/u+1QjRyq9Bvy9mE4qrNPIUIL8nZ22Qopa0e539Yk
	SXP/IwmZlvT27O6irTpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXaPB-00000008xKL-3t2L;
	Thu, 11 Jun 2026 08:04:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXaP8-00000008xJS-3sgo
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 08:04:48 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65B5GJDh3843682
	for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 08:04:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zcPoGpvWH4s+yFG19JRwBR20hHx4EyKKXYhWPVnP30I=; b=FSOyVnmtaK8OqCiq
	XgwVJV/fsPgqUQ2Zjls4qlq1ShFeVnieq2s2vOhSzvBkCfOTGjjAtGiIJ7So0gDQ
	3MVndu3dMgiawolPs1ovDDI7FQtD6gzIYQ58gebHB2yLcpMkh6cC1h68240em+mH
	QSf+rzr3O/mdCK/j+/5/CY/UXGMGGvLJ8Q95MORIjWu0qhibgjhmx1UKf1Vc5JUi
	JgNxr887ZHEFLKU5Iwjsz7uTIrOzM11IBrKJEWQPeFw79KUzSb1rVquxc0PJXl99
	Uv4o11XTx3UJn3Buikyx0NDVMcmDbJOxiB2+xzRYCd4gisgoboRGFjeD0mdpGrzm
	ruGw1A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eqe702ax8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 08:04:45 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-91571f0d3e3so110438285a.0
        for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 01:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781165085; x=1781769885; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zcPoGpvWH4s+yFG19JRwBR20hHx4EyKKXYhWPVnP30I=;
        b=jmb48Xlg6z/6Oe3mNPgx4YJ5OeXbmaF8z5HxPPLtlj2ZtToIRHuYbrQVPPkYmyHCqI
         qE+w5pEVX76ChSmftLa2hStzFeQnCHIRi9yI3056nGCRjwlc2cOvHDLf0uoHGVSMO2Qw
         72xMZQ4c5eDT8z9KN9w4XVbZj6p7mF/lPIg7QMdufbVtVSGXfzXvwCyrThuuu1QDRXpR
         9ot/sXv1SLHnNNyJmyPTxWiF8nStiasUrWJTPwXUGcPygMjT0gjrs/4i/aTFwe3JI53S
         GNPSqyxxdua0HoddbWQ7Rym9xokoW0F9oJdDjJpXm+lUyWbIu5Hq7BIUDZxjwEDpAt9b
         a7Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781165085; x=1781769885;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zcPoGpvWH4s+yFG19JRwBR20hHx4EyKKXYhWPVnP30I=;
        b=Ql2aTyTtuFt0fvqQQQswgy7uyeRJnBY8Q3xYwwew71lhB6RjyO1vZ711CJzNC0Hcuh
         DakXuVkfG/NzKJC5nmHXyWjgnaaeS51ZZczagrbDeifaTQxakAt+D6MnElYxiQFT7Z4C
         HBinLk5qW6ODRiijpuCKuSX+qrWriuCl9gclYqAt++tebnmPT1ovtdRqBHGafw3ZK4Km
         DhnrQEGnjP1dNumbB76hbJIjNll6+NQVNcg8AcIBAdzUiQIh9Dm9AtAqwGCvgZRXC0pI
         oA2pkpKooBi3OX/EfbCBQbfgFaqbQytauJFZ/wGb9PwnuAsrWWer2L7tl7N1PdAuZgv4
         OPtA==
X-Forwarded-Encrypted: i=1; AFNElJ9Cip6MvRWjXVvN1jUSteNuLXj6qHOsjwYmeEfE2QUGzsxBfFfLh5zeczishkSe3ZHWIMcIHgym31k=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4c90idMd7TJ68/rEPkBZYZtn7OJxIoK9q7U6cHDdmUiRUPWxO
	9Pt7lNrJ8cIFNicisv5SVzIj6uYTOYF1baTSdj9Wnd/+/LScbBot9yfT2Ej5o3QEU6ATXWADV8a
	pHajutZNQJoKpAvKQ0ASx72Y+EMtrsfBv05ZZPZk3VKA2yx6xhLdP0dkADa5KJoNUAw3e
X-Gm-Gg: Acq92OGHVD95tS1h5+BLPECSIGUw2S1cv3RZVJICW2yZI7VIEXqOcbidAVZWGfCZdid
	AwNwuMLKsDuXRflNwt3gsaXS5vha++2DGYsrz/Zwhz6OIKMjTp0Q2JiJWpMSBeinsp9UgD7s5kh
	SvaVUOOyh8AS2uNwcZqt7l/kP4PF0kGhtzUD4V8lFZlV/0fgmp98+1Wyt3J7usfzxVyzq8RCUrj
	PnWaIFLwJEvIUGVlbtJmduwLl05umH3UIkmyO8MwPqRNidXxBi2kJfwkFuyjTuuq8p8UCIFEyIr
	Az1O/q+gwQRIdZfyc3iOFCcO6q9QxMAWAfSACOlmSXJGqp+PkuUFCvjPXO4ssnK1f9jf/LOwzMI
	OyxEbyasEVu0GuGt2bzYUrBSVcRRnuneouAWRdQT9K596NYrTGDQ93r+J
X-Received: by 2002:ac8:5a82:0:b0:50d:ec32:b84f with SMTP id d75a77b69052e-517ee1dbebamr16745491cf.3.1781165084842;
        Thu, 11 Jun 2026 01:04:44 -0700 (PDT)
X-Received: by 2002:ac8:5a82:0:b0:50d:ec32:b84f with SMTP id d75a77b69052e-517ee1dbebamr16745051cf.3.1781165084377;
        Thu, 11 Jun 2026 01:04:44 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bfcb5abeed8sm24972066b.45.2026.06.11.01.04.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jun 2026 01:04:43 -0700 (PDT)
Message-ID: <c37b4ba3-c629-42e3-ac35-dbcd69cccaa0@oss.qualcomm.com>
Date: Thu, 11 Jun 2026 10:04:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/9] arm64: dts/media: qcom: keep PLL8 out of Purwa camss
 hot path
To: Ramshouriesh <rshouriesh@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Aleksandrs Vinarskis <alex@vinarskis.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-phy@lists.infradead.org
References: <20260610-a14-himax-hm1092-v1-0-0c9907da47ed@gmail.com>
 <20260610-a14-himax-hm1092-v1-6-0c9907da47ed@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260610-a14-himax-hm1092-v1-6-0c9907da47ed@gmail.com>
X-Proofpoint-GUID: lQ9hNhm7Y0bMu-jZH0iNTdUxPrvFFdLv
X-Authority-Analysis: v=2.4 cv=B9eJFutM c=1 sm=1 tr=0 ts=6a2a6c1d cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=YywNEx0Wz6o6_ceNSdAA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjExMDA3OSBTYWx0ZWRfXyuWpQmi7yuzs
 6LgmGP9CEWEUfoKzhyMbOMQzvsISDbJ39pB5ZnuoNMzEZINDqqvTNbg0faJhy2Nh3g7+C+ktIz1
 xFhSSx+GVQAu4DhiwmgYpc8SIaJRch5H6hPbS/NKov3fzl6W8XUYTtfOioQaNNY9K5BgzcjBkfG
 8sWP1GvI5GYFJaWsnve2TFRyDzJx7UfCvKJBWHXB1P0JWeOCD2m9okRgRnU5xDijO9NVCqj2JXZ
 jBVC7rFWdttUcWCmaH+N7JOdd8P1LYvTZx/hq3vJbGOQPsXc07aNLWox/IfZnXEN371+UU2G9Bi
 ErfoUnhxnlLvUjPl/iIWI1mLR7QKKvUltZ8hUYCv+eeHtdCAM9SPGwiwEKMLH1ZFoh4pH4uIYlB
 ndG0IruRCpkrpGRlgGSEsWTY6qBfo279do42ise7zW8jjAWrG/5LxhVMOSLIgl9Hrh45NbYKTXV
 wcMywjQt6l+ru0D7+lg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjExMDA3OSBTYWx0ZWRfXxDyndNaYljCY
 H2ym8jomgG9kLSfFDXDeKcLL/NRFgabythoKLCLJC3aQ70YKIjr3GKkI3jRWBVzSkA2EAPiO3v+
 auraXXqiarq0TrJHjIoBeninkf3k0do=
X-Proofpoint-ORIG-GUID: lQ9hNhm7Y0bMu-jZH0iNTdUxPrvFFdLv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-11_01,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 spamscore=0 bulkscore=0
 phishscore=0 suspectscore=0 clxscore=1015 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606110079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_010447_097747_40648DEC 
X-CRM114-Status: GOOD (  11.56  )
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

On 6/10/26 1:09 PM, Ramshouriesh wrote:
> cam_cc_pll8 (defined in camcc-x1e80100.c) doesn't latch on Purwa
> silicon. "Lucid PLL latch failed. Output may be unstable!" fires from
> wait_for_pll() whenever something asks for a PLL8-sourced rate, and
> the camera pipeline ends up dead with "Failed to start media
> pipeline: -32" even after the qcom,x1p42100-camss compatible is in
> place.

This patch is not right, seems like you're missing the hunk to override
the compatible for purwa, the tail end of:

https://lore.kernel.org/linux-arm-msm/20260507-purwa-videocc-camcc-v5-6-fc3af4130282@oss.qualcomm.com/

diff --git a/arch/arm64/boot/dts/qcom/purwa.dtsi b/arch/arm64/boot/dts/qcom/purwa.dtsi
index 9ab4f26b35f298ad7c6c361b3e232edf07baf223..25cd547caab8fa64eb1a134068b77f5178f5c248 100644
--- a/arch/arm64/boot/dts/qcom/purwa.dtsi
+++ b/arch/arm64/boot/dts/qcom/purwa.dtsi
@@ -6,6 +6,8 @@
 /* X1P42100 is heavily based on hamoa, with some meaningful differences */
 #include "hamoa.dtsi"
 
+#include <dt-bindings/clock/qcom,x1p42100-videocc.h>
+
 /delete-node/ &bwmon_cluster0;
 /delete-node/ &cluster_pd2;
 /delete-node/ &cpu_map_cluster2;
@@ -36,6 +38,10 @@
 /delete-node/ &thermal_gpuss_6;
 /delete-node/ &thermal_gpuss_7;
 
+&camcc {
+	compatible = "qcom,x1p42100-camcc";
+};
+
 &gcc {
 	compatible = "qcom,x1p42100-gcc", "qcom,x1e80100-gcc";
 };


Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
