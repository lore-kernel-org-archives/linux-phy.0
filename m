Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3396BCAC5A7
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 11:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+tLTCkViKm1/LZTJxzLI8Fqd/GrVmCV/6+Qjs7QFLpk=; b=BloHIW/aYNspKF
	OGR9xYuHZK2E5xfvb0BtuhT0Be9JXk4Lde28WfTFxc87NLXinJsleAfpOUrFWqiqkMVwtoNEbcm/U
	ji5isfulFDVAqneWRb5yENW9klcy0CrGw6STB+OJBeTdtrboDFwtpPxG7QDM3OFEbOCBSCKgwOsqw
	96nSae6Evtw9se7zVTssgz/JdN2uFDbRBQUNRJndBAvUeO3t6lxGIoIgY+8snKhQSEy5FpYF85cPY
	uNX4Tk+z1GN1dpWeL82/DfmNduRlWpWFNBCHkSKcqHO6Z0hlf3rgn1slSvsdtuyn840LNqS8N/V2t
	TszjVp4NXAzcYq0ZFU1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1kZv-00000008iQh-3bWU;
	Thu, 25 Sep 2025 11:56:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1kZt-00000008iP5-2eEi
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 11:56:02 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PA7klh002657
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 11:56:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BGho4vei24vHpadg3iVDOtkY/sdrfcEeDXVF20xwVL8=; b=ghK7Gy6U3dP69nus
	K1EkoylRUWcWiCXq0RJWUTUIDslnKTYIHtym5SsrlCV3DqbpJ0wmWG+Qwox+Rkqo
	RYHN7hqkRRN0CgBNpntNwi4aqvODBgLrJ9YOjIYqZRZvSWzL8cLJnNbbS36VvlzJ
	Emq8L3BY1a0PDv2NF3CvlLZbHu+MxBTVzEz7tSbBUWepAP9McKfal87L3qLf3yyN
	bJ5B3haiQ1PHNUle9LGPf90aKlFbeRvadOQLjp9ZcDnyvee23rnt5jm0mzWKbnR5
	t4ms2exDANoscV2QbpvVNnGKKtBtDa6zHwFDvhNgu64wwQ6Do9ARbw48SbsF+eaC
	NXjFrw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajf2gnc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 11:56:00 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-7c51f566163so2516446d6.0
        for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 04:56:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758801359; x=1759406159;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BGho4vei24vHpadg3iVDOtkY/sdrfcEeDXVF20xwVL8=;
        b=Vq0fyTptLghgguV6PDs3+spEyyY9loLZjKehGk8OXzcUa0j8jQYUdN2dBRYpIhMRHs
         WETAejtnqFsQRw03cxE2bZ1LM0BeBPaA1O3qY9r1wFdSbCsKvsETNLhHgmswjlY/DUzu
         dS8HjkkXlsWGrld5J4gVtoSPV2mjNX+FiVDk9voUQaIfAZlya8gxZfLNOGnpiNSscMuL
         2gqjHPupea1zTnmb+MvD7ynFg6p8UH9TpkfJSgOpX6rtE+1JlOhZGqqz4fbP+7GdG2ie
         TFFZlGoe7j4O3wAIxmearA+JbxlVwrPWi4sOIeoqlXE2+w4RCA2ywn/K7RqlTPpdfbPB
         ofHg==
X-Forwarded-Encrypted: i=1; AJvYcCV0IfBulto0I6+2xrktbX8THehVBN+H71WEa811vD3FXQutQVwpLT61Ipxlpw/U8T91de6PUPW6dvs=@lists.infradead.org
X-Gm-Message-State: AOJu0YyWQ0k+8Wt4CAIMRKd1DpbCZGHKKULhiK7aMQBdDPUwF5rerkkK
	/A4Oic2yK8HpmBWW98X+i47GFp4fRfmuV1uxWCs2sUS/1gql8YYLOvmiSifPgrfcjGuM+84bRGP
	tESWbxYD/xIqsuDrajj0ZD+pRRzaHNYPqeCaPYzxLcml7dPQjn7GS1lgiG1RatPtiwynI
X-Gm-Gg: ASbGnctkrg6N1LiTClvPrgbk0+x72ekaNg3tYMtzZqbhFMWgr/md4xfT0Jj/TRsww4t
	+9IoR0jOfcv1uAVLY4HA8PopUmV6GbjwlsUny8StEb4x+0QlFuQI1agVaqkV/Vg2f7PexzXt+u7
	mwV5dLzf55PCIWr3+d27Aoftse33K3preuqRax7WSaJmbAXbRyEeMd17JJ243DFHLi4CW6TznEC
	y8b4vEGWVGjuiY7CNLslALdjLTMuDhYP7Z5/gKJopODQ5cWZ3aYT/zpgTb24cHCeZoFHztV/w5C
	1nU46znflg7LYvFn87owbJgh7ghd89L3GVmeT8p0PalReAmDHc2xLsuyfLXecrWRepx1VWpSUa8
	R7uGhMcjADZw+22Seuj0ZLA==
X-Received: by 2002:ac8:5d08:0:b0:4d7:9039:2e87 with SMTP id d75a77b69052e-4da47c063ffmr28296761cf.1.1758801359222;
        Thu, 25 Sep 2025 04:55:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFfws3DHjZ7NiFj2AF7AaqOeOE+RAgqdSMayjchEUwDWrTLQ8HNN+0mGYgmyc++RfEn9OQlxA==
X-Received: by 2002:ac8:5d08:0:b0:4d7:9039:2e87 with SMTP id d75a77b69052e-4da47c063ffmr28296531cf.1.1758801358755;
        Thu, 25 Sep 2025 04:55:58 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b353e5d168dsm160195466b.4.2025.09.25.04.55.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 04:55:58 -0700 (PDT)
Message-ID: <ee4f25d6-d04a-42fd-8b72-6b272e750b9c@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 13:55:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] dt-bindings: phy: Add QMP UFS PHY compatible for
 Kaanapali
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
References: <20250924-knp-ufs-v1-0-42e0955a1f7c@oss.qualcomm.com>
 <20250924-knp-ufs-v1-2-42e0955a1f7c@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250924-knp-ufs-v1-2-42e0955a1f7c@oss.qualcomm.com>
X-Proofpoint-GUID: Eh01aUHt6N2w_F1Gz30Ehw4E2r26k391
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d52dd0 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=mUVx_TFFIgGiSlsxcIcA:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfX5Fz47+SlhE5V
 qJgH09uycfInLmYA0i7D2+bMj8tB/ZSzU6T3oVXX5c4NK4VmZECer9hgrUF9dDPdkgS92sCEYu1
 sYFkdPMj2MaF1q7kEtplo62H7I0sGEzjCGhPd0D4qfV9XXJhjt9ahpxwMLJOW5qs1CuC0jWSlIN
 xLEZEZtLpoRkY86oTCoFNyTuzq+VWOenlDhwv75n1hhGh6RfSh2i5dLisxs1dmJTNn5ngR7Dr5e
 WaQK0XMGNdXNSanKMZmJzx5La/kc6Fhyk6aBcjDya3VLgpfNMYmErz5asdIfrZEApyKX3iVM9gV
 Z86mckxsODWK5ryrGZva0rZ8XUoRrw00/GPTHkPyfWgG9JuzwqYJFDkqsRx1GH59e2qHm7+YxXP
 zpYtb7Cy
X-Proofpoint-ORIG-GUID: Eh01aUHt6N2w_F1Gz30Ehw4E2r26k391
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_045601_677518_C0A03286 
X-CRM114-Status: GOOD (  12.99  )
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

On 9/25/25 1:29 AM, Jingyi Wang wrote:
> Document the QMP UFS PHY compatible for Qualcomm Kaanapali to support
> physical layer functionality for UFS found on the SoC. Use fallback to
> indicate the compatibility of the QMP UFS PHY on the Kaanapali with that
> on the SM8750.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---

I can confirm the SW expectations are identical, down to the programming
sequences (mostly, there's some minor adjustments that MAY be specific
to 8750/8750QRD, but IDK if that matters or if the docs haven't been
updated)

Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
