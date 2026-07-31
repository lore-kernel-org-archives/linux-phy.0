Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 730D3C5516D
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jul 2026 11:56:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OvxwVulNKanwtSm3Y8FlCCCFtt9GDE6q3rC6+Do7Rhw=; b=4scCayVL234/jt
	hCdpIslDwEmx9fhwmsXn4AJwG1O+TdIkYi9Sb21PR6BdtSImWCaf+ApUFtdQsfUVT63XTPXkWdRlL
	2MCtyYij81ZKq7PSbpUYfiqMCD053eIhoY7cOCc9ddKLv4D8PiCyAm6G/5MZgWrSKsR3g0+NOdUtv
	wOBGVA/aPr8iYgpOdM5GZWSFUEtUfWXb/kbdfb+0eAhvFw3+3bwrOzHbWqIlNUwiX/H+C51WPFQAA
	GrqLnbOr1H2lbDXghXfRrKkz+/oF12OYytV/F5bqi/fd1ssXqJ+1AOyryhuk7ZbUXAlVigpNIb52k
	OJcgE2FaNZ9QZu8Cyi6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wplqm-0000000CQhx-3IwV;
	Fri, 31 Jul 2026 11:56:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wplqk-0000000CQhc-00xR
	for linux-phy@lists.infradead.org;
	Fri, 31 Jul 2026 11:56:27 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66VBejs2892136
	for <linux-phy@lists.infradead.org>; Fri, 31 Jul 2026 11:56:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=A8A/dgkDSxTCKAo5zheB2WNS
	Qb/pN5sTWD9PkNiUW0g=; b=Z80r+B/zppKvvO1Ihb3XX5b4279Ww9NVcPaG+AIa
	JU4UOZHqS65mylLkVvQZktGNeFUyQiYPc/eIeaqeDMx7Y6cq68W0KBZsfzlJtk7T
	k85Ig6Xgf7olFoSCF48K8FloHKiQZkHb0Dp9p1K4qeEfVPOSfiu0E9hpbFn9q9aG
	70e4RjIE9D/6qFt8uYNmaFNCnLlqCmiOzkRyc3HPcwtrn/ZBVn6GRw4xyX45K1YE
	butLAR8QYmyowvmRTyVmXWF4iMU7/X57ALtNiA9OcVJRIT5BQW4MS8GdYlaNZvmD
	N30p3OfhfOynuzghKnDgw9keXWG+pBn7PCxMUa4YWnHYng==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fru1x81r8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 31 Jul 2026 11:56:24 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-5276aa86d00so9452171cf.2
        for <linux-phy@lists.infradead.org>; Fri, 31 Jul 2026 04:56:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785498984; x=1786103784; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=A8A/dgkDSxTCKAo5zheB2WNSQb/pN5sTWD9PkNiUW0g=;
        b=Cx4d4QCAsLTV669yOC7Q+VUS8TJF2yFglw1n0s7LSzLQcZanqkpt4JP4fDka/Rwlo0
         /zCSPVdljzZNz1yGZ3lPWUICALNsJ1q7lQQ3OGB1mKIOG3zMJo1REOb0KXwSxyOyYJ/n
         G+prkjZleNnp2vH+bp2rIkobRPeEpEplM73+Br9s+CXRKQrvCtu7rMPKUa82GTMAfw97
         RU8JekP0yQy8tJt8a8XGIJtsZOFqnNo+oxXJvz2AotoocaLo8JEmtfq1qW334Wn3kGJT
         fTIVcIo3ntDyFbMdvCYThJdvPuG4oHBTZhybDl571ZsAhZI7T6m8xyr7q7ZlA6lOWAk9
         QPLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785498984; x=1786103784;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=A8A/dgkDSxTCKAo5zheB2WNSQb/pN5sTWD9PkNiUW0g=;
        b=gT32DEgzQYCQ9HeZgLL1yj6qc91IKbOIGMnITkKDaBtdqJWIaY8qN2b0FDB267xdFA
         GIqS6hGFk8ubP+cTdtFitTtdP9STvDNsGGsev0sHzSisuh3TAjqKM1KbkHe/PNvS0Z1b
         IV/7R+hEuAF7stk0cDpL2QgBwehY2rihhoNQPYzM1I59Rah8ZiUqscnw7Hr7nXw180pb
         8rEcLu4ROOaxr9ewTD4ONseHBcUBMbhytkomZU40AIurGUk/k9ZqdXs4/clPoQyH/7Yg
         IMhRqhqauo/Ll2aZQIVrFj3l0gIvCwkUqvSLz5nY86+ymof6N8hEgxudzYcXzRS0Zo6l
         MqOw==
X-Forwarded-Encrypted: i=1; AHgh+RrHDgvUdQFuz0SYqJkY+XaBdXHE+qwrG90ee6+U09nT6HymPUwV5qIFpLKYUxFlccYDTZ/heH28pH8=@lists.infradead.org
X-Gm-Message-State: AOJu0YyoI8if7HUdm3C6PGDp9423ZD1hC4uS8m19Crp7xloZywZWUF8U
	DEIZD1pC/rAh1W4up+2t8YqDppa4HyeNwlni3YMy+jL214Vs6XD45zLK4ajEnTMISOT+F3tZSIz
	bCYfAp+QvhfRInsFVX2zx5+uEBwXsisirBSTZmXZnZfYT8Omo6gS0EwQwkUG4uuKzA56c
X-Gm-Gg: AR+sD12fYci+Y4naOyFeALaqz6B/gFNMiNlK0Sh75KYofqvJaz8EEB8q0PTbpKMDYAu
	Y2V/yYhmHYhemUZ2GceCPxNEPTQuGM12mmWCCHxUmbA8HoxbEfHlBo3bR7j5dTaAM/xcJntOj9V
	oqUEzrCt2CLFIsRxLT5sNNk2tLg4pe726XbWOHXFOqnynyC6N8XjBWfbBRNuQt0/RJhMlzVgI1K
	K9NWqWHGEifiYOuvvuRST46Zqm4IjfNYAwsUK792eQI7Zev/xyot7TBzwsbN12WkEDluizF1dvZ
	wSe6mqPBXOElMyhoMRdPJzwy9z3zLsQ1fBcLugLPwb9SeYPlXuikkXHnmRFHv1J8Hdx050Cw740
	1qCRtgRigW5/SoOo=
X-Received: by 2002:a05:622a:4105:b0:51c:a7b:f730 with SMTP id d75a77b69052e-52b4afaf495mr23885321cf.33.1785498983652;
        Fri, 31 Jul 2026 04:56:23 -0700 (PDT)
X-Received: by 2002:a05:622a:4105:b0:51c:a7b:f730 with SMTP id d75a77b69052e-52b4afaf495mr23884711cf.33.1785498983165;
        Fri, 31 Jul 2026 04:56:23 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.163.114])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47fd456a6besm4055437f8f.22.2026.07.31.04.56.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2026 04:56:21 -0700 (PDT)
Date: Fri, 31 Jul 2026 14:56:19 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 4/6] arm64: dts: qcom: glymur-crd: Add PHY supplies
 for pcie3_phy
Message-ID: <ln5gd3zo33z3l2xsnciq2kxpxc5pqkfeltleyucv4iktdlta4j@tp6y5lttmfhy>
References: <20260724-glymur_linkmode_0724-v7-0-65c8469c6b65@oss.qualcomm.com>
 <20260724-glymur_linkmode_0724-v7-4-65c8469c6b65@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260724-glymur_linkmode_0724-v7-4-65c8469c6b65@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzMxMDA5MSBTYWx0ZWRfX6YwmNJzbt8SV
 YepjLw0KdltBtWO6pA0CiH/E72hNL8kxHXnbRST3YJb9EUV7gRnZleU+URbP6qbTyUtOiAqTnrx
 FBPCy5DhaZicYDxQlgHb501P2SGbbmY=
X-Authority-Analysis: v=2.4 cv=GpByPE1C c=1 sm=1 tr=0 ts=6a6c8d68 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=6dw9+iwJWV8PcCi9M4lOBg==:17
 a=kj9zAlcOel0A:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=pZ6eNVg1DDkEi6vEKfoA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzMxMDA5MSBTYWx0ZWRfX65GdA2NOHavk
 UPLCjKu+jv2rjug+IyEe2khoh9/nbpgIW1O5B9L/X8vaiiTH0l5pyIjmpMR91ArUAfTWQC4w6q7
 Tf+RX/LmMXtaU0bJmVLO7dx5UFcTLy2D/WUFStdycdrpCB0oq2ihZjCzP5Wp/t2/g9AfDE3oDVQ
 oGUD+7i/GZ9PUXrwgd9BUONLCS45bnMi0aVkrajkEipHF/UpG/blsGxpUHQUth9WiRWGcB/2339
 zIsW//0y+fimfNRW1AmQrYqsDsilhRSbTuieaoGjCy3589hDSZFCIAEyga834FzME0ca085VjVX
 pT5eDnesPZU24zLdzES7OQKHem7k0aCM7U4LqyV1pYtqWncHxU/gAYw308lFF9aYLEBzj97JNZu
 vQNwnwewJOQrL9JFK6FdlveSy5RRsLAxO/qyd0hoPd6p8znJbOsLKjuY7iNio8JKOwVjp8cbivy
 dsRfeKR+I+ZV1ta7sCQ==
X-Proofpoint-ORIG-GUID: -p5Ry_vHdRK5PoViPHnaTm1rcZ0Z1Zry
X-Proofpoint-GUID: -p5Ry_vHdRK5PoViPHnaTm1rcZ0Z1Zry
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-31_04,2026-07-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 impostorscore=0 suspectscore=0 clxscore=1015
 lowpriorityscore=0 priorityscore=1501 adultscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607310091
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260731_045626_046955_A0DFFAA1 
X-CRM114-Status: UNSURE (   9.20  )
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

On 26-07-24 03:01:22, Qiang Yu wrote:
> CRD wires the shared Gen5x8 PCIe PHY's regulator supplies through
> board-specific PMIC rails. Add the vdda-phy, vdda-pll, and
> vdda-refgen0p9/1p2 supplies for &pcie3_phy.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
