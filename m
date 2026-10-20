Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF842606A31D
	for <linux-phy@archiver.kernel.org>; Tue, 20 Oct 2026 21:04:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=WBbi7eEK;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=OdEK5b0u;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=AJTWzQVZ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IXurUn1PdpX1bv2nIMoSB+WKay4lsPSRBMYUC0qqI/o=; b=WBbi7eEKzBZIf4
	ZOl3B9NLfq2zr6hTNIiZoeeu42wt3/0eG63Z1PAmSArbcb+tblTulWKOTMk4i/lw1TJa0pOEHJ+oS
	F3JtxG5W7Y8vW4loiLcPt/R8YdmynaxXvlSM/hwWPO5jHnbg1bPWFt3YEJkpcR0fyg9l44eRkmxeZ
	/UGXZoAGMj3zr9UvBzThrp6AgkcLO2SysPMH2H9Xyq0pGjVRjqKTgSk589R2aNsutL2h57111J5Xw
	JG393JT56zawQclxXHBFzSdX6sOaVbP4VyD7GW7D4eLrUCm6xSS4raazJMzHi7KbGuuApRAaJCIPK
	+SZ4ENMkSjWmYd3yVZ/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJH0p-0000000Aero-1n4R;
	Tue, 20 Oct 2026 21:04:47 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJH0m-0000000AerR-43f2
	for linux-phy@lists.infradead.org;
	Tue, 20 Oct 2026 21:04:46 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69KKtsuD3856505
	for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 21:04:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	W0kb4Akw+bn8BPFIkHjW3CrJjYWME/XFWI4jMhrgN6c=; b=OdEK5b0uuDC4pl1H
	rNfBFMks4raI2FTAL83yd+QaQu12fO2psfxpI+toA/wXxROva9zEopDXmpWT5h/B
	78RDs+JmsgRaQIS+o1S07XMwyndu6UuJ8KTcYyn4TQ8/Tjj/Yi1GZD4qBEhnKxb2
	IhPHLAiB5/zjJi1btP/IkvZ7Pt832Jcixk8FSdC89XcekOjN5L+kaZWLy9L9GLiW
	F9FPWhPX+mbwURIA+levjeMClatWVGcyAHCI9htozT8qPM/7LGWy1VznoOeyiWLL
	rjllWMgN94URv029cnS5fN2dSdbK+mPghpjqX0Ol28T8QrUmIFN2qHkDY1rKZ1l6
	6a7nbw==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hedabgkuv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 21:04:44 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-30bcb065bfdso2202eec.0
        for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 14:04:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792530283; x=1793135083; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=W0kb4Akw+bn8BPFIkHjW3CrJjYWME/XFWI4jMhrgN6c=;
        b=AJTWzQVZXH5Dj3po5Vkl8OIIN9o4SNkHY716btmSJcfz3ynTWsub48v0dRXlnrrqol
         d9zCjPbGzwmCHvWlKUC07OyWkzo0Ip8DjCNrjvnxVdXTRkv9sn8Giwi/LFY+ZKJZ6Du6
         xwVzYhJ9nEOUrp3c+oFAW0YaSYaMRDlyeWf8qiQ92nEuNKSITL+zzSV9GCzilQGNPDiA
         nKodYr7PDL5459XPhqDga9F/4b69meY6uN/n0bKOUOdDvCqUFSgS0X7KWhRVbU28n+v4
         hXGRIPzzW/apl5qMe74aG20qCUUi6utnEn03sbK2VTstA56kxJX8f+0HL4P6wdJ3pu+b
         taeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792530283; x=1793135083;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=W0kb4Akw+bn8BPFIkHjW3CrJjYWME/XFWI4jMhrgN6c=;
        b=bEsmPX3u14EN8RzPwosYoiEW30Ufk3onRe33On+vCYOsAeKB2BBoC53b7gRl86K8JF
         mYLbQJvF0QJbRoQCFespXISX1mOE4ltojoHoxKQmE2EN6gBcRJAJbgvGWha0GUUXBEn6
         yHivzB/3kVezgnBgiWpH+frF5OBfFLTST6dLPcrJD4us/pYTwtk3gggpTrhRl2E+/JtH
         wwy83Sp2EhWeobTRv4ZFTr5VfiPvS1ACE5vcvDXg6rQ84iaIFBWzUjs/GSgIfLJ1qYJg
         +EF7TWHkGvCIAv2SFzqGA0L26BC9V1XDjXnJeSwxAdRroSsIM+MV2ELxHvzKYBR0VeUu
         q3jA==
X-Forwarded-Encrypted: i=1; AKwUvBw6M58oWUwCQU6btnCPUnuELcIKCw4abdk98Rm/1r8Vqo6OSq/bVVp7R8rdls1WPG5+XHPf8qSH6VY=@lists.infradead.org
X-Gm-Message-State: AFq9FYIvMM9FY/32+KeFgPkRh1pQY+k4NaRZFA/4dZIjahVBBKqD+8V6
	zAraABgMx0GuOVXfydt1CgfxEJEl87gVcsBe44mU2qBQ34PvJbF/tFa9qHWbgsUau4cW+LO5jHb
	QJxdUpdmnyLFQUGYcfTc/ctAzpnpErWpbtfXOGw+dXmk9fZOco7xkQ2RsgEhacH6YGDF79revL+
	Vx
X-Gm-Gg: AYBFou1dxwQuWLs1aPVRsy/tpLx6ZiSaPuR0ZpCsPPlfz7PVSOKu41cJbVUO8o8KAzl
	Q81omwPXCGRS8fKgAj1B8rodrg3NHh/cwzCSr+7x4Y7VdH83fyq0a2xoVS+KYcCXn7YcOkWez4X
	9xlqEUPDNZa7APZ7G09/cKWCPhkJ4w3qmfizaxcDQynUXK2Ocpmo7djF0dJYstBvImU6V4H4KML
	EJw6EbLHZ9barszPJnX0Cgh8XX2lUFhBOacTdxK7R6PBo7fg5tk0xhsUM4MjDXFfyUyhoZVtMGp
	AXyQGDSIgb6nN7unPdB22n4BK7nvO5s+Y3oAA0VccqPA89tetFanrAqPjyuIBasEH7FeL1v7JHm
	v19rjs+iMylUOWq3/+Y8N4RAdczS3GnaDENSYGnlL8cYMnLFMLJJCgRz1jw==
X-Received: by 2002:a05:7022:691:b0:149:d501:b990 with SMTP id a92af1059eb24-190a599a59fmr60045c88.25.1792530283092;
        Tue, 20 Oct 2026 14:04:43 -0700 (PDT)
X-Received: by 2002:a05:7022:691:b0:149:d501:b990 with SMTP id a92af1059eb24-190a599a59fmr60003c88.25.1792530282524;
        Tue, 20 Oct 2026 14:04:42 -0700 (PDT)
Received: from [10.71.181.181] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1903e02901fsm1009238c88.22.2026.10.20.14.04.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2026 14:04:42 -0700 (PDT)
Message-ID: <0c6b0b6f-af1d-4b7f-8494-01b1990b2d52@oss.qualcomm.com>
Date: Tue, 20 Oct 2026 14:04:41 -0700
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/7] dt-bindings: phy: qcom: Add qcs8300 to the CSI2 PHY
 schema
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: bod@kernel.org, vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org,
        mani@kernel.org, gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, loic.poulain@oss.qualcomm.com,
        vladimir.zapolskiy@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
 <20261016235502.2274268-4-anusha.nandi@oss.qualcomm.com>
 <20261019-majestic-gorgeous-sheep-a9eae0@quoll>
Content-Language: en-US
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
In-Reply-To: <20261019-majestic-gorgeous-sheep-a9eae0@quoll>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIwMDA4NCBTYWx0ZWRfXyA3uCVOIYvER
 ZvRrIKm6QwaEHOXBD97sBszwGNc1IYcCM/Taqn7ZVwlAIc3deqP3NHD4/fprxbVBbaJL7Wwau28
 5D/CJwl9XUY9KAorL0ObiM1J2UswxLY=
X-Proofpoint-ORIG-GUID: FlXR2B33awE-iidBDooxSDYnUEBLkIx7
X-Proofpoint-GUID: FlXR2B33awE-iidBDooxSDYnUEBLkIx7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIwMDA4NCBTYWx0ZWRfX46ylCNrGbfqP
 0RSi9CrA/TaR99TE0b5Ni5aTOYORYoybqyaMH3RkZEfF68te88MdRmw3JikM9BVfTADKySXOdjd
 X866MMcjohpFrRtPv5tFz4rHqZ0tSb5NPrv4Ts75UrYzXU/pj44DY7wmJwbAGuHSfmLrERC9Unj
 PT2chSFacZhVkSlVnMJwur5VyZDLmIdLKW3UoTT2x9WyHYw9kNzfhrw1my4gbry8JavZ6HKnyJO
 Xc387sTjasfy7lzrSv8cly5rbFZ7fT3FdDZ+slKFzs7dqxYKC8MccOFplkl6hSrpV85awpg4xd3
 Ium6w33zE3T2yPmpWmK/pX+h9ZVAqFSrkDPbPlOicZGsZahZf//zeuuZolXefQGRrb1LF/Nms4D
 blsPzv0JGYAl6f6Hopqtd3PALrNlWD+D916Dj8DfsMRPblVKvEFpoT939J6fXs2ts6DKMYYrA+S
 fjEsqoiqWw+5cuH/3Bg==
X-Authority-Analysis: v=2.4 cv=NLpAaE6g c=1 sm=1 tr=0 ts=6ad7d76c cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=Xvw101RpNOGDi7fnrawA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-20_04,2026-10-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 impostorscore=0 phishscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610200084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_140445_017176_8EF90551 
X-CRM114-Status: GOOD (  18.33  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Krzysztof,

I can drop this file if there is a generic yaml file.

Best Regards,
Anusha

On 10/19/2026 12:18 AM, Krzysztof Kozlowski wrote:
> On Fri, Oct 16, 2026 at 04:54:58PM -0700, Anusha Arun Nandi wrote:
>> QCS8300 uses the same MIPI CSI2 CSIPHY as SA8775P --
>> identical D-PHY register layout, common-control offset and clock set.
>> Add "qcom,qcs8300-csi2-phy" as a second enum value in the existing
>> schema rather than duplicating it, and generalise the title/description
>> to cover both SoCs.
> 
> Just squash the patch.
> 
>>
>> Signed-off-by: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
>> ---
>>  .../devicetree/bindings/phy/qcom,sa8775p-csi2-phy.yaml   | 9 ++++++---
>>  1 file changed, 6 insertions(+), 3 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sa8775p-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sa8775p-csi2-phy.yaml
>> index b66ec2f14189..8e60ef0714bc 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,sa8775p-csi2-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,sa8775p-csi2-phy.yaml
>> @@ -5,18 +5,21 @@
>>  $id: http://devicetree.org/schemas/phy/qcom,sa8775p-csi2-phy.yaml#
>>  $schema: http://devicetree.org/meta-schemas/core.yaml#
>>  
>> -title: Qualcomm SA8775P CSI2 PHY
>> +title: Qualcomm SA8775P / QCS8300 CSI2 PHY
>>  
>>  maintainers:
>>    - Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
>>  
>>  description:
>>    Qualcomm MIPI CSI2 D-PHY. Connects MIPI CSI2 sensors to Qualcomm's Camera
>> -  CSI Decoder on the SA8775P (lemans) SoC.
> 
> You just added this line. Changing something you added means previous
> patch is not correct.
> 
> Best regards,
> Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
