Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 685EDCCD183
	for <linux-phy@archiver.kernel.org>; Mon, 13 Oct 2025 12:37:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u8mmC558ZCia+cUGxBL10ZWjpbQul6h6eJpcZrmK/qs=; b=QxDSKQ6WcFE6S/
	CPusfzP7zVryKKj6qbI912UQz2T5Ge0B3PgQSQzbb+/Dzky6GGTCsLhbFOqBDKlP9fQXFYzXfhHgx
	tGLQpp0/7SAlepJgS/wrA6naBziA9ewxf3NmfztAvn66Q7mp+bp5WXmhIsW1oulrgO/T4v2wtpd9W
	dPRwYPht5Rx73HfcPFM0KsxzT17IQBR2vyeM2p0qaya92RTClZ8fLFub7KbVoJyp6iiIR4DZxM0qS
	l6zKYqoj0LSNTHcZ7vWleKcrEQh0NgXSdlJA27yCBuqqErTm6CsqLIcokGG7SslCcm6O6M1QLELbU
	s44Zco9FF7hVf8egFHpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8HoI-0000000D8zu-0nDP;
	Mon, 13 Oct 2025 12:37:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8HoG-0000000D8zX-0Qfn
	for linux-phy@lists.infradead.org;
	Mon, 13 Oct 2025 12:37:53 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59DAWdp1011022
	for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 12:37:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UTXiDHZxjE5lYanBLZzc3WtP
	FhwD6zEyaiJPl3VCc+c=; b=Palj9H/ZHdSeQ9v8BmEGpcpToPtdkFkW8L9foVqF
	ma0Q1ih6Vl4BSwmHNHJip8SFxWjaPUnPkijbB4VH1suCrIPjty4Yc84bssgGeMkz
	YlcM7rGi7pTcoviN/WtNMDuncdFFQxwPk2wXEBMC2ddryPuWkzM/LoaqKh1gZds+
	Txq97tHGJjSZ4ihmFmyr+fYQUucuLypOmod2sd4WiKuelVCEp5Iyje9EZmhFaDsJ
	kREEkvjwGMCOFsY0eqoBnH0uZ3NvHxfrtABxbZozsX7wIGrFq8zrtlZet1NUdQWF
	3WoD985IMAHdfy6W+Br7NDrmgdCYGfBoBF8QKOC2Gwighg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qg0bvg0e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 12:37:51 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-827061b4ca9so2055466785a.3
        for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 05:37:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760359070; x=1760963870;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UTXiDHZxjE5lYanBLZzc3WtPFhwD6zEyaiJPl3VCc+c=;
        b=uWfVo8nwlNJKODrIAC6TNoVvPntzPdR2u6/Z9b3exrGlr+BO9/QQpy7h5g7knApYCN
         gu/L5+ab03E0OlSk8WPcrnw+VDWeSAQ17jvnv66Xgevc8czK1ICm3uubMICPqL3F35BL
         3YIJoHVg2D4X2SgTPahQL3qb8lcNajncZ9ugLksrF3JyD7j45rF1XUAqjmUzk08B+MHG
         i2cRYnXYvIJ3Ah2cFXlZfSm1lLqzC8ibw/Dn5dllFz0warpMGcEGs9ClvGwTEGmxea5m
         uijmUoc/Bu0wh7BP7JIZLzOR6svUCuk4Vw+6eWZ0WLrGHefzgy+CCKrF4BmMmZrKJ2th
         iBBQ==
X-Forwarded-Encrypted: i=1; AJvYcCWweESdvL3ooFaJR6GrniCsuzEu2BNHfj1+GWzBMbFnacCAQ+oHKln8vnDqMbyKsmV1jA4xq2xp1bA=@lists.infradead.org
X-Gm-Message-State: AOJu0YySoX5IXGpTDW+DGM/88RamlfhIBimIGXHkiNJU1LqqWmHdlZpO
	Ivn4mIzTwOZYUqFFSLtsmN7IHQ5iJPTYDxeGIund4gMoK9cyVohfV6TkcFsKB4qh+3zpk7nNS7B
	4CLV9S+fTBdtIz+0dNCRet5HumF/y6KHsrKy3s9SVV4XaK9hppyGgxTMz5TqpfYKaFBfP
X-Gm-Gg: ASbGnctx1oMiRQfbRDoYB5VyLEDF0/x1HQD2LIgQz5oMykdihSFMwvFcgqFJlGgzhTR
	icyNnw9KABr69623OjU/iRqrVnUckNNzEHO07FY4g1APBfSThJE5Kgr26kH0TSAnvKiN9WGMuUR
	t4HXWeqXu8dhxdPlLXeo6P+kdceXaX/bc+D5gJnjfMUFG56ALI2kVcut4powEyg3fq+w4voYUH5
	s0NoDLz2bFZWCpDZl6AvNxV7higfaNnaGkBRC0LPCvlZF7ki+V/ldxh8i97uKAHAhOnRLTOyK/S
	Ko2nDQir8ioa+64ILeJbk+fe26x3Uor9SkOjHV9Rf6juAUwJ+tsENEsxEEG5hOLd50z9l3dwyLl
	/hTRVeCcLXx+80IjlBo+w3V7/iFS/3ey8nYQCyZBGIQqVZtiH4Nbt
X-Received: by 2002:a05:622a:189f:b0:4e7:28c4:3367 with SMTP id d75a77b69052e-4e728c43476mr38351841cf.82.1760359070274;
        Mon, 13 Oct 2025 05:37:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWOjldqO3QYpUkgEWR+chHtoaSrhdJCEvdufVafxS4s9vy3NHcZihffXxkbgVUGrgtKFOT7Q==
X-Received: by 2002:a05:622a:189f:b0:4e7:28c4:3367 with SMTP id d75a77b69052e-4e728c43476mr38351181cf.82.1760359069747;
        Mon, 13 Oct 2025 05:37:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5908857792dsm4079248e87.105.2025.10.13.05.37.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 05:37:48 -0700 (PDT)
Date: Mon, 13 Oct 2025 15:37:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ritesh Kumar <quic_riteshk@quicinc.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        jessica.zhang@oss.qualcomm.com, sean@poorly.run,
        marijn.suijten@somainline.org, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_mahap@quicinc.com, andersson@kernel.org,
        konradybcio@kernel.org, mani@kernel.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        vkoul@kernel.org, kishon@kernel.org,
        cros-qcom-dts-watchers@chromium.org, linux-phy@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        quic_vproddut@quicinc.com
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom-edp: Add edp ref clk for
 sa8775p
Message-ID: <xofvrsdi2s37qefp2fr6av67c5nokvlw3jm6w3nznphm3x223f@yyatwo5cur6u>
References: <20251013104806.6599-1-quic_riteshk@quicinc.com>
 <20251013104806.6599-2-quic_riteshk@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251013104806.6599-2-quic_riteshk@quicinc.com>
X-Proofpoint-GUID: 5d1BvnxCdrhjmQyerZmXb-JmhUq40ISk
X-Proofpoint-ORIG-GUID: 5d1BvnxCdrhjmQyerZmXb-JmhUq40ISk
X-Authority-Analysis: v=2.4 cv=eaIwvrEH c=1 sm=1 tr=0 ts=68ecf29f cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=COk6AnOGAAAA:8 a=1RwfRIOwSLSNpsoXFEwA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMiBTYWx0ZWRfX2YMWfyqoQsIb
 kEXAX6x9uic39J04eqQ8oxkt3kGsPjmoSTm1oyD/cyV4/GFRFIDOFoDYBmwTHYgkGh7FmPMkvNW
 ZEmwb0gsSsKvfq2QAPT9/LqzNK9TvuwEscC5stC2edgRiki140YHc/mgIXZ5O8RjH97B9G1ZAiB
 LzaB+Q8/5leOl/Wd5R0FbHrCgRaYsHzEaO+9l1jNX84Iy9dbx5TPtyXZkzbonXNnyDOfIUJ9OL1
 36vZh39Y/ho5PuhhhjT9ug1oa9OYK5oGIiTBDGFYyQNr3WFMI51ZMUKyTkWWmpV7Q4o1sjFQOHW
 5U5fLt7qp2FBb1enx1jWlsDS45ZY0ac3VVdlBccaPhIetNiVGooOZHqszNOzMKgeghbGP0VTGsP
 My2vUutpOzAidunipgNGlF8VvhcEcw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_04,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110022
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_053752_162795_F35E1D9D 
X-CRM114-Status: GOOD (  16.82  )
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

On Mon, Oct 13, 2025 at 04:18:04PM +0530, Ritesh Kumar wrote:
> Add edp reference clock for sa8775p edp phy.

eDP, PHY.

I'd probably ask to squash both DT binding patches together, but this
might cause cross-subsystem merge issues. I'll leave this to DT
maintainers discretion, whether to require a non-warning-adding patch or
two patches with warnings in the middle of the series.

> Signed-off-by: Ritesh Kumar <quic_riteshk@quicinc.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> index bfc4d75f50ff..b0e4015596de 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> @@ -73,6 +73,7 @@ allOf:
>          compatible:
>            enum:
>              - qcom,x1e80100-dp-phy
> +            - qcom,sa8775p-edp-phy
>      then:
>        properties:
>          clocks:
> -- 
> 2.17.1
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
