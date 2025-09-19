Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AB52CAC592
	for <linux-phy@archiver.kernel.org>; Fri, 19 Sep 2025 16:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M+Zk+cMpX9DZxWJLIV0Ji1FbqSsO9GVstakKPiJ2JTs=; b=Le2iZEMMMUOhYK
	2n2ZfWWdfl5JJ1eYRzKzWGviVmfJ4gm6M6z3YZ21YoZotlGgX4pnFVJhFphptjuxfSd4tY5GIzw9u
	UgiZlNo1Z4E21NpDTuDFHxItDaRtcSy5qAvKPXWI5a+9zQwOEZWtQVA2Af0LLXhUA2rnExs1tkQHU
	LhNkMw72mpTfzLfvdrylcGvqVuPfnsWlgarBSy7I1Ef0hbhTcBuUeWs51SJ534TBU7SIYDUi2vpE9
	FH/vFpgSzcErxomzDSW/EgsW7adtrHGwIWk6MBQqqngaCCMuPQ5LiAUo/fzsKA2SMebimpCRcguqT
	l5JWiXwwhtiqbWBBGCsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzeGG-00000003aCR-14UC;
	Fri, 19 Sep 2025 16:47:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzeGA-00000003aBF-3zdb
	for linux-phy@lists.infradead.org;
	Fri, 19 Sep 2025 16:47:03 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58J92aBL011113
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 16:46:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Um9tx/y2LwR08t9HZZiDTcTu
	T9zUc9djMRm/CbZ+X1A=; b=K+xaXDXh+okpJGZMNks2h/fbPmM1It3/CUsPmBKo
	/ABpAwdjxm57Q5qXX0C6YdG7Shebb22WpRZVdpi7DZr2iYAnHxLRjnrUFDbE16qr
	wFJucqIb3lGuQS4VfzJ7E+RTzCPWZTFYcNissZeif3uisAwVateOyW7AOqkn05WT
	PF3o401V2KKewh7kCA8Naz8NoeD9D1B8QRUkgy7he6fNAbWk4YhNnQCTU8OuRtPG
	wWyx3oX10GhZI0/wHo72nGQ+ykuoj/jni8FT3zttzwWHR7rYkw9HvAuAEwyhh9bu
	GK0aW48pMOde1CF1FYc4POvpMriWTEOgIW2DGaITLgGuDg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4985wx73xv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 16:46:57 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b79773a429so62718321cf.2
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 09:46:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758300416; x=1758905216;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Um9tx/y2LwR08t9HZZiDTcTuT9zUc9djMRm/CbZ+X1A=;
        b=pGBkiFaQ2Z9/J+CVHy97RuzktbD1Ndii8okGIhBDqS9PiLx3VRViQv0tSJZxBI21t9
         rQibhN/yrxRPU8kbxnlwgEsPTPKnO3T16bIC30z31fM/3VBi0+EPobCKO6kx44B1huYB
         pbczdn33uR4cNSJKl61VOpxYfo0wHZz9q4+XuNGWRXuavHY1b5Nxft5jW25ACbzDtxGS
         i9zn31CuQq8532Tmf2w7EegfGmncc4UgPqOidPAby4yHJ3LlGa3mSYfyMhz9PtQ/BZgk
         1vJqygXiQzzj857+47K9R1fqOobCkuT9L91znODPI9vJIekZHEf8u23ORvgugqKL4daP
         b9VQ==
X-Forwarded-Encrypted: i=1; AJvYcCWu8dP2lzdMJO9Wk9REPGafZbeJHfclnioA6u6LmBQKt0V0YKvwfaKvHPYODisrhQaM7i7gZsQ/gbU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxm65oSBgdNRaJys04Nqz628rxkKW8WK8t1DZzrO7NrN26Ck3uq
	8flVv7k5wU1OtXNVeoIAsOhwvxwaaQbgsEqYJVpLWxrmy49woEtVhyzXHpN0v34nfoyPumZPEv0
	A8dkb+yIzeVw8s3o2ale24OPjO5byh0uTrGJlKKOuC32DClLj3khRCys7XFOaFO9G+//k
X-Gm-Gg: ASbGncveG5nPjEpXGfuj0bTBmHeUSHEzpBOz3R3rRBkI7GC6ELPf271HHnU4xIsKj6l
	MYwuARrYd6SVytKHCYaQdcMguayywhVXSnjDHkkPElz59SXnJKGzRTfFLQYETf8WtmuyGHRhJfW
	ILMDdINmngyID0Lba0WNZepks8Xje5+33FxMhgrvxqE0lojoqucTytOmGEMYK1dniGFA9utBTWN
	QQLfYdqHhWN0RlDVCUb9au9huRSKK2bYCh4Fv1kyP675KXcd+X/Y1SSMKVS+YBpuV7M939sN19+
	2rs4ycDzTaSNYXlMelVpLiIiDSVEgV2oyzTY6rRdccQVKhw2Zpxeq+nh1+fonAU9OpEritYkNeX
	l+uZkQaApGReleP7KnPWhec95sz8gKTUVjkR1RS8YKTUfuMJ+vTZ4
X-Received: by 2002:ac8:5f8f:0:b0:4b7:9b61:e6c9 with SMTP id d75a77b69052e-4c06e3f84c7mr46464851cf.25.1758300416414;
        Fri, 19 Sep 2025 09:46:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFDuHu+pCXreZlW6yMOlA1oYpTJZZVjarPXitMYqbWZSgljRDCeRfsjix8zFXY3l/JofzsvjQ==
X-Received: by 2002:ac8:5f8f:0:b0:4b7:9b61:e6c9 with SMTP id d75a77b69052e-4c06e3f84c7mr46464201cf.25.1758300415762;
        Fri, 19 Sep 2025 09:46:55 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3624319eb49sm12152421fa.50.2025.09.19.09.46.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 09:46:53 -0700 (PDT)
Date: Fri, 19 Sep 2025 19:46:52 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v5 06/14] phy: qcom: qmp-usbc: Add USB/DP switchable PHY
 clk register
Message-ID: <xtosrpz6rzdvtmpyq73gboeckl3c2x23iqehlxzbaszqmzugjd@ixhj25qujqxo>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-6-eae6681f4002@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250919-add-displayport-support-for-qcs615-platform-v5-6-eae6681f4002@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 8Kwo54PfTrRmnXvkNqKIquRorbQwikDu
X-Proofpoint-GUID: 8Kwo54PfTrRmnXvkNqKIquRorbQwikDu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE3MDIxOSBTYWx0ZWRfXxwLloAXbv7j5
 U+F/fHGt2vn03jOMB3CsFUK9LsGfTNSZ6yn0BexMtgZnkkkYJkz6DsIvaR9LcHLhW4eypTWG1wZ
 cEbhcXmni+CuXSl13uPXdtQxLdVBYlTNz4zMBo5F1+ewbcn0zJve36pJZLGRgUkEFAyI9gnpm3W
 UCQxDg1dOdhjttXK5W8zVmqm9+p+r5QIDA/GVQXvU6lTqwJoUKrslWieKCoTMPhrsdXzYdTc17l
 TV86QhTZUK+vPxkio2cwjtQkhs+8v/B0gJVRc3+/yDWKhCy8m1+79KMrOeTwkOAs3zE/jDdgvNo
 3hNPQCxYfHRWvrsPyFLeHVTbeLMtINCOKRo8zxuv9zoWfVKtJhcB/Gv4Jkqs5/sT5aMcpf+QRym
 X1dY9A4r
X-Authority-Analysis: v=2.4 cv=Fq8F/3rq c=1 sm=1 tr=0 ts=68cd8901 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=LgMYyniohzYkqyhK0zYA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 impostorscore=0 phishscore=0 priorityscore=1501
 bulkscore=0 spamscore=0 suspectscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509170219
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_094659_112184_41D22448 
X-CRM114-Status: GOOD (  13.58  )
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

On Fri, Sep 19, 2025 at 10:24:23PM +0800, Xiangxu Yin wrote:
> Add USB/DP switchable PHY clock registration and DT parsing for DP offsets.
> Extend qmp_usbc_register_clocks and clock provider logic to support both
> USB and DP instances.

Why?

> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 210 ++++++++++++++++++++++++++++++-
>  1 file changed, 204 insertions(+), 6 deletions(-)
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
