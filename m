Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EB82CCD183
	for <linux-phy@archiver.kernel.org>; Thu,  9 Oct 2025 16:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g4x6rhRlbZugsilY9EwNvY0I0l8UkbhND5cUX8Wq/3I=; b=QVhuxkdsRJBJHJ
	z7KsVz0DNNNqD+vXS1Nv6Mvxfn9qGBZ06j2IPm6rACXD1++hetDpE9Vzn4f/crIhWqMMGH5zzTJUU
	eQuB1yGYIHqB7yLmIwCkq+Vcg1yIzTIc1E+X9Bl38bODrHWASclBU5Pm84twptfgOp9dj5gCWcvnt
	E4gBludVbDysgFFIPONwLRlKM68wfQaUl75f2YTXRdqo4t9cZYdR4WLXr8m5fOtBewUtMubLyGV3y
	8xAhRbrkQLvYCZl0S3Tidl7eTUMSQA6bCFw6sYN4SzfsSTXLB5ZrlAWzJ07ePvpm9WIwuGe/e7Ep1
	r/lpe7lSbuwYMBtv4hEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6tj5-00000006iMg-3vUK;
	Thu, 09 Oct 2025 16:42:47 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6tj3-00000006iLy-0z8j
	for linux-phy@lists.infradead.org;
	Thu, 09 Oct 2025 16:42:46 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 599EeRol029031
	for <linux-phy@lists.infradead.org>; Thu, 9 Oct 2025 16:42:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=agrtrs+DJSL7nf5oW/g8lusy
	admL/3uHNzUwQtR+shY=; b=kXEPNCUh99s34FdTrDEhnVL9Tlwkm3qcVkRzxonM
	1CQSiLwiRHPHdRWWhnrticBXCH3/nagiptcADiqpHh6iQTAHdhrwZbSN38KIpoIV
	l5t3d0IYAKiR+1ivXhokKhIHVmETQC+KcpU04sP3goXxDeDmNqP778AloK71q7Wh
	TVFmK9nMIZWk58TSa5BpjhQauerSARH4TIJfAFZPRR534N8G8hg0qQbLJC9XLya8
	L5wE6cwr+wg1KutbOAEKUnhNkvAApZLHsTA8KSIKR+QOJOOMMiSDK3yZLrUT5TQ3
	KaIfk60KfxJRw2FPuHbKvacL0pK5JHtGV1xlXRk/8pzEyg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4kup2j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 09 Oct 2025 16:42:44 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4d6a82099cfso41664171cf.2
        for <linux-phy@lists.infradead.org>; Thu, 09 Oct 2025 09:42:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760028163; x=1760632963;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=agrtrs+DJSL7nf5oW/g8lusyadmL/3uHNzUwQtR+shY=;
        b=OBInYn4wcLquOIuGZTp4CXwf8ABBko1EvLQkuylcT+oxDp/dp7TNzk6JClOxKF0CTN
         qhKsvkaWMbdk2Y6mC5EmTN6PvNsIWp2aykIkUmnwS84n1kn88dMKa/0h7jMF0BqxVp33
         RmeWtdUajNSt78G0INbPj0wBL5G8Fqu5sYVsRLCPMrBOWtclfhRnOZTfiXC7DiF4Cofx
         ESrRlXYBMzQAI8naOkL7QvS7EymwlFXWqz/qmnbeyfcwS3k7C9dtqSh/HDRaJjcd4Uo3
         h6g0+cpAtsyfNfGDPuI8nZcl8kWN1/IOISx91lBqHzgJ1YFW6swO3xlNZtvhXIYtKAKV
         LPWw==
X-Forwarded-Encrypted: i=1; AJvYcCXrnevbYSbnhAunLakql//futzIbtYbIp7RsS1SiZgH5GRJbFFTfRp3O0BlCuBW4lEugoBtISC2JAA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyOAhX7/hq+0xdXbROSHukl2zeXbuRkzux/tC9b81Js+72QSIfd
	WFgzqxE5+Tzx8OuJmGPhwei+bzD9ky3xKHSRqucwr0Ho+mzkYSKR96LSz+lRDVnzFi5XOOKt12o
	urenxqeIApINqFqxMlNFAr98cB9GGMvi/NeRm2rK13tszRdjWrqz7lrNnlxoS6v6p1HkB
X-Gm-Gg: ASbGncuVpWmo2WNldXjjf7avhbYRlXMAw4plvD+9oDSMME5R4rlxCtT+72XliQXnLRi
	C6zFGN6bfd7oK7QhnPeKuMv0ctZ0cMw12VL0Bg50xeZ1TuM55N0v7D4R4fXJDdxqpuYLMfOEQF3
	JEvI2fiQuy3/vPaKexw78nfPUzIUKiG24wHVN/iBgFiJyNsv2g15WtoCwaVP/FoNgqYO75QL/Gp
	JpxBxhiBhDU+yZhCPV8t1xpVOBj/XS4+JK/aLxSKle1YjFCIwCDT2u2RCcQHYq6uBU8kkVxmYhX
	f7ADuGIZ6jNjYLSM3zhPAUWV/2w0Y4UMc6xAoEYwwquKFCB/wV53mPaXJYnC0W9bw4Cj8sM2qx6
	TZ2KwGli18R06kqlve0GyHpjOTH2c1DxixTHJQZNYq4g1hG84pZBnIpl1PQ==
X-Received: by 2002:a05:622a:1a94:b0:4d8:372b:e16a with SMTP id d75a77b69052e-4e6eacc5dd8mr122162541cf.4.1760028163279;
        Thu, 09 Oct 2025 09:42:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHaQz67QvaR/gWsBxDITOOw9Xe6x4vHfjxb37JqA0HRLVHcGGuc5OS1bitAvcqNx2Bj+xJB/A==
X-Received: by 2002:a05:622a:1a94:b0:4d8:372b:e16a with SMTP id d75a77b69052e-4e6eacc5dd8mr122161931cf.4.1760028162757;
        Thu, 09 Oct 2025 09:42:42 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5907adb2705sm1174139e87.105.2025.10.09.09.42.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 09:42:40 -0700 (PDT)
Date: Thu, 9 Oct 2025 19:42:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: sm8750: Add PCIe PHY and
 controller node
Message-ID: <53wepdhpn3fgvq5fum7u6n75su77dligfjtnxkfdh4r723a7yf@6u43pwkwt4yw>
References: <20250826-pakala-v3-0-721627bd5bb0@oss.qualcomm.com>
 <20250826-pakala-v3-2-721627bd5bb0@oss.qualcomm.com>
 <aN22lamy86iesAJj@hu-bjorande-lv.qualcomm.com>
 <4d586f0f-c336-4bf6-81cb-c7c7b07fb3c5@oss.qualcomm.com>
 <73e72e48-bc8e-4f92-b486-43a5f1f4afb0@oss.qualcomm.com>
 <8f2e0631-6c59-4298-b36e-060708970ced@oss.qualcomm.com>
 <qref5ooh6pl2sznf7iifrbric7hsap63ffbytkizdyrzt6mtqz@q5r27ho2sbq3>
 <b5538a86-c166-4f20-9c3a-8170d3596660@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b5538a86-c166-4f20-9c3a-8170d3596660@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX9jkZThT1Wc/5
 +E0XTLX4Kh6IoMUaRJFJpxEPJiNEiS02+KtbL+QyIzTF3dqN/ysWjd/RArjocRdCQkn1pHgDtoq
 XnzjJqVxA/+9wnwHyL6f/5lOjtSOs8YTnvhmZ0rZy5p2CKKeBAEtVJWvqTZfHGrp6a788yf6+mF
 RtFR2pfXzj9+SUVgVDJqeLomLfc3NqQCdh6/NKml6kWUMxs6w+FZ9mIKgpUQ4dscJwp20Caf91n
 yHfUSd2HIgalBQ5P0DsmRWJJ2BLOEhfxvJZ5lhoOnetNQWYHTUsVuMFTcrM3ccCCk260MZzclbf
 NN+GrE0OBSjSYtXi4LeY2uX9bgXlVx/TKSATmjuMcRDju1oR8XFXWfSWnHPQfHiBJhCXoB/9HSB
 nz76FYIHauhp+kS9FlBivLzVisZoyg==
X-Authority-Analysis: v=2.4 cv=CbcFJbrl c=1 sm=1 tr=0 ts=68e7e604 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=AjAdDlCQjSUW_Sxw7NwA:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: nYroCtflXF3wN-Fsv6JiY3JTmU8ZoRw_
X-Proofpoint-ORIG-GUID: nYroCtflXF3wN-Fsv6JiY3JTmU8ZoRw_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_05,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 malwarescore=0 spamscore=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_094245_277032_B2B9780A 
X-CRM114-Status: GOOD (  27.56  )
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

On Thu, Oct 09, 2025 at 10:35:52AM +0200, Konrad Dybcio wrote:
> On 10/8/25 9:08 PM, Dmitry Baryshkov wrote:
> > On Wed, Oct 08, 2025 at 11:11:43AM +0200, Konrad Dybcio wrote:
> >> On 10/8/25 10:00 AM, Konrad Dybcio wrote:
> >>> On 10/8/25 6:41 AM, Krishna Chaitanya Chundru wrote:
> >>>>
> >>>>
> >>>> On 10/2/2025 5:07 AM, Bjorn Andersson wrote:
> >>>>> On Tue, Aug 26, 2025 at 04:32:54PM +0530, Krishna Chaitanya Chundru wrote:
> >>>>>> Add PCIe controller and PHY nodes which supports data rates of 8GT/s
> >>>>>> and x2 lane.
> >>>>>>
> >>>>>
> >>>>> I tried to boot the upstream kernel (next-20250925 defconfig) on my
> >>>>> Pakala MTP with latest LA1.0 META and unless I disable &pcie0 the device
> >>>>> is crashing during boot as PCIe is being probed.
> >>>>>
> >>>>> Is this a known problem? Is there any workaround/changes in flight that
> >>>>> I'm missing?
> >>>>>
> >>>> Hi Bjorn,
> >>>>
> >>>> we need this fix for the PCIe to work properly. Please try it once.
> >>>> https://lore.kernel.org/all/20251008-sm8750-v1-1-daeadfcae980@oss.qualcomm.com/
> >>>
> >>> This surely shouldn't cause/fix any issues, no?
> >>
> >> Apparently this is a real fix, because sm8750.dtsi defines the PCIe
> >> PHY under a port node, while the MTP DT assigns perst-gpios to the RC
> >> node, which the legacy binding ("everything under the RC node") parsing
> >> code can't cope with (please mention that in the commit message, Krishna)
> >>
> >> And I couldn't come up with a way to describe "either both are required
> >> if any is present under the RC node or none are allowed" in yaml
> > 
> > What about:
> > 
> > oneOf:
> >   - required:
> >      - foo
> >      - bar
> >   - properties:
> >      foo: false
> >      bar: false
> 
> Oh yeah, this works.. would you mind submitting a patch like this, with a

I'd prefer it it comes from somebody who is actually working on PCIe so
that the explanations are not ridiculous. Mani?

> 
> # These properties must either both be under the RC node or both under the port node
> 
> or so?
> 
> Konrad> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
