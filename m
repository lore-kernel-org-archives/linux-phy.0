Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B09ECCCD184
	for <linux-phy@archiver.kernel.org>; Sun, 19 Oct 2025 16:00:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G0B4zs6KmEI4DV+NUAkUkYICTPfURwhK9/fchWDdVN8=; b=NnYjlW/S1422oz
	DfHSDlzD74XN53BodIbKVS9d8Li4DD0Owf0Szq85TYRyQW+cc/vBp49bsvdDeudVk9VC0viGVNYK3
	dhBlSSs2FBoXBMpkjJqjDXgYsqD86aGnErEOxVR5xOEb7GeGAmTSz9JnUwwnli68yVnvCaThM177x
	Pin+IbfqMgmjEJoZ8dOSjAPo7xZyTliDd7sHlbw3xK9a9KxtTKc4EVQLGZs/+wO8O8d1U3B/BOrDU
	CGuG9f0VZTORJEpwAOdwE82GjxtpMGDRTXNBjgkPjNFEj775tiWjpO9AI5lbqGal/TgJoYANgiJOk
	Mz6c52QQ94yozI33TIRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAVpv-0000000BAz0-16PS;
	Sun, 19 Oct 2025 16:00:47 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAVps-0000000BAyY-2vMj
	for linux-phy@lists.infradead.org;
	Sun, 19 Oct 2025 16:00:45 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59JB9Ma8002706
	for <linux-phy@lists.infradead.org>; Sun, 19 Oct 2025 16:00:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=I0aOhuHfsf8NnOCKsGXsoFF5
	VUAwjGMlD/AzJt3MbXQ=; b=cl3aOc6Sy5pydot+kRNSrbkrFxMsjMCn4XrvpzKh
	bpf3Ug8jW7hWdR7wKP+GUa051yguULly1KjOX9wHKqyCwoz9CG1hr/L42bSmyCTK
	ruWSzOAAgiB+K4z9GHh/aPHnnHLggkFh+LTf9Fb4x9ZN+GoNMKgEOp+GXiRvlv8L
	f68H8OCb6ywMtZrm1rE2fNGaX9HouCgG7OplN0st47ppI4spbBykC/v96Flia6RX
	9zf0fGflY7wsSNr7FnJZeoE/WS5Yv7fhQ2AxJTW3mUdG9faUdxhGlMdyO/XF986q
	eX/uGS50zfMH7kY2EeldZ685pW7BEWSKkqw93gmrJ63NLA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v469ah72-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 19 Oct 2025 16:00:44 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-88f3c733d98so1414252685a.0
        for <linux-phy@lists.infradead.org>; Sun, 19 Oct 2025 09:00:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760889643; x=1761494443;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I0aOhuHfsf8NnOCKsGXsoFF5VUAwjGMlD/AzJt3MbXQ=;
        b=XQ+0l8QQzCA1Vk5zKHnNeMSQYl90AwOu72FqLcBP2PiHleYAMCD0tVCS1ELjJ7JGL6
         BmoyyF/H07JGiT5szTiQmLh80L7KY+f0XkltuVWYN3qpLE0n3KmGL8YsRLPTxBZPCdZa
         zHCRwb4M4/CgBIAVipUI/uwJWs0yQRrzu/kZk8XiGh6Yp0Ph9kUkltrSSCJGgG5zirDR
         kX3AozIyBFpiW/J62y4kHOWEWghzskTzmTAS2rbA1DQ+MvUIWGdsxgitwgRUpgG87tl8
         Cy3gmPFfyNvlO3erRYjoaSPoPJ7Mz50zCxWNzldXnkC3IGKK+HAiVyGsid53Tr4fPsMq
         Gs5w==
X-Forwarded-Encrypted: i=1; AJvYcCXX+TyrEh2UCjM0OgdOfywm7UczjdkyzCam0kyzEh6ozJWSAJRIKYr5z8BlouSxWOfSHnXBIej3xj4=@lists.infradead.org
X-Gm-Message-State: AOJu0YyNXhFg/7d7uPvPECYXmhmV2esKfPCyw/qlA3jAvhl5uOo6Lu6k
	fTbq2qXRerXXhozSyvx8fvodP6lBDbKYOwwVSir1yqlo0/KkrC69pKNHzGv9PfRMBeY/yLT0Mkj
	FtzSPv7XC8vNoCzQaTlb76/819m4XTTKr8ErYEiXTgYSgOEf0xNnPYEW2ahdScXN5+qxi
X-Gm-Gg: ASbGncvEVif9lC6CyV9YTfwuZdou8Edh4aUF8WJxYGTPeWax26RfNQuJwWNSScddbtH
	6YDvwQMMX+wdIsnADJrnF9+qAWDynmJ6ZhiMdEp1/onXqjyzc664nikEZ8hp0ZoMJ0jsgR9sDq1
	ySVmeXE3QGPp8yozRhwTFHr40eepfAirF8n7Sh/ermDeQsd2GS4P+QXIoX9FVud8ATyxJx1i/4a
	5q2pyUB9P7pDG4v00X613r8VeBF4gZOWtfBrvuXJsPoK4DXH/E303YRP544kGc8TPRw+Xe+Fqgg
	64WX6yiGPh+CCIaDOh36ieZ/aqT7EN/djueBXvhycs61WoKtkPCyqhg9bg0gtpDEuqz3t+chf1e
	y8BLOczrz7jtHfA3WxHKCJ6+Cu90sgpiFCq3zQqNH7NNkD2xLUe7ySjlFmWmWt+pzWV3Ex/qbQn
	VLu8EE8VpB3gY=
X-Received: by 2002:a05:622a:587:b0:4e8:916f:9716 with SMTP id d75a77b69052e-4e89c56ff04mr156963471cf.36.1760889642816;
        Sun, 19 Oct 2025 09:00:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFxIuS6L7f7xl2z7A/qtPnCnl8+CWdxgG0dYfEbSDh9YuNhHQTedtbsmxKzGddTEFlE02CDlQ==
X-Received: by 2002:a05:622a:587:b0:4e8:916f:9716 with SMTP id d75a77b69052e-4e89c56ff04mr156962901cf.36.1760889642395;
        Sun, 19 Oct 2025 09:00:42 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-377a9508d89sm15105791fa.37.2025.10.19.09.00.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Oct 2025 09:00:41 -0700 (PDT)
Date: Sun, 19 Oct 2025 19:00:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Restrict
 resets per each device
Message-ID: <i36io3dee54fngsiwavyzzxsqgfoxezwm26gi22jf5nzcmeyxc@kkd7s2oh7jpl>
References: <20251017045919.34599-2-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251017045919.34599-2-krzysztof.kozlowski@linaro.org>
X-Proofpoint-ORIG-GUID: PRCJhsV9OnSb56pUBe977G7gM3nM1ODQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAzMiBTYWx0ZWRfX539qt3AvpFEH
 K15RdSQVxeYWkzLL4L4f03WqgnIlb297049Xv2sd35GjrUBt7zoA33nSJskALyERAja/n7XIHlb
 BuVdyztUElkz2fWloRZFF8/kC8L2gaSENnkwh+A3hgj0TIfxvcKKBE4ANwlakj94bggGqvHIqFW
 tgeYE1uY+hAwSPb8jpTEFGBT9oz+PR8qWqAPKTxtZ8bTzQk3ufbiUDXDpEMiMY4CiOf13wXmi+F
 jO+j/yBVmcmEHKza2KlwhhkxmaZRK3LEp5d9zEsIDjgSN+tz+lVj0UstsA0laYLogPQfu7ysbM1
 9ERoj/hb3twpWwcavkl9RbQozfU4Ind0SUSEZ90EIVX3XytcdpJXinf0ZqTTrbU6bYWuA44dNGn
 OyNN3G1Crv1UVMCzrn+f45Z/tXKmpg==
X-Authority-Analysis: v=2.4 cv=U8qfzOru c=1 sm=1 tr=0 ts=68f50b2c cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=hUDxmADzl2bKAqMNfzUA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: PRCJhsV9OnSb56pUBe977G7gM3nM1ODQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-19_05,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 bulkscore=0 malwarescore=0 priorityscore=1501
 spamscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180032
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251019_090044_737005_BDD4289B 
X-CRM114-Status: GOOD (  13.33  )
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

On Fri, Oct 17, 2025 at 06:59:20AM +0200, Krzysztof Kozlowski wrote:
> Bindings should be complete, thus complete the constraints for the
> resets by adding missing compatibles for devices with two resets and
> "else:" clause narrowing them for all other devices.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml          | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
